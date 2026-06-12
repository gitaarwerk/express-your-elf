#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

const projectRoot = path.join(__dirname, '..');

// tableName is the actual Lua local variable name used in each feature file
const features = [
  { name: 'Compliment', tableName: 'ComplimentLines' },
  { name: 'Flirt', tableName: 'flirtLines' },
  { name: 'DanceWithMe', tableName: 'danceLines' },
  { name: 'GivePresent', tableName: 'listOfGifts' },
  { name: 'Joke', tableName: 'jokeLines' },
  { name: 'RandomPhrases', tableName: 'listOfPhrases' },
  { name: 'Rude', tableName: 'rudeLines' },
  { name: 'Seduce', tableName: 'flirtLines' },
];

// Extract the body of a Lua table starting at `pos`, handling nested braces
// and string literals so `}` inside strings doesn't terminate the match early.
function extractTableBody(content, pos) {
  const braceStart = content.indexOf('{', pos);
  if (braceStart === -1) return null;

  let depth = 0;
  let inString = false;
  let stringChar = '';
  let i = braceStart;

  while (i < content.length) {
    const ch = content[i];
    if (inString) {
      if (ch === '\\') { i += 2; continue; }
      if (ch === stringChar) inString = false;
    } else {
      if (ch === '"' || ch === "'") { inString = true; stringChar = ch; }
      else if (ch === '{') depth++;
      else if (ch === '}') {
        depth--;
        if (depth === 0) return content.slice(braceStart + 1, i);
      }
    }
    i++;
  }
  return null;
}

/**
 * Count the number of message entries in a feature file.
 * This counts:
 * 1. String entries in all declarations of the main table
 * 2. table.insert() calls that add to that table
 */
function countFeatureLines({ name: featureName, tableName }) {
  const filePath = path.join(
    projectRoot,
    'public',
    'Src',
    'ConversationButtons',
    featureName,
    `${featureName}.lua`
  );

  if (!fs.existsSync(filePath)) {
    console.warn(`⚠️  File not found: ${filePath}`);
    return 0;
  }

  const content = fs.readFileSync(filePath, 'utf8');
  let count = 0;

  // Count string entries in every declaration of the table (some files declare it twice)
  const declPattern = new RegExp(`local ${tableName}\\s*=`, 'g');
  let match;
  while ((match = declPattern.exec(content)) !== null) {
    const body = extractTableBody(content, match.index);
    if (body) {
      const strings = body.match(/["'][^"'\n]*["']/g) || [];
      count += strings.length;
    }
  }

  // Count table.insert() calls — handles both inline and multi-line call syntax
  const insertPattern = new RegExp(
    `table\\.insert\\(\\s*${tableName}\\s*,`,
    'g'
  );
  count += (content.match(insertPattern) || []).length;

  return count;
}

/**
 * Generate markdown for release notes
 */
function generateReleaseNotes() {
  console.log('📊 Content Statistics:\n');

  const stats = {};
  let totalLines = 0;

  for (const feature of features) {
    const count = countFeatureLines(feature);
    stats[feature.name] = count;
    totalLines += count;

    const bar = '█'.repeat(Math.ceil(count / 10));
    console.log(`${feature.name.padEnd(16)} ${count.toString().padStart(3)} lines  ${bar}`);
  }

  console.log('\n' + '─'.repeat(50));
  console.log(`${'TOTAL'.padEnd(16)} ${totalLines.toString().padStart(3)} lines`);
  console.log('─'.repeat(50) + '\n');

  // Generate markdown
  const markdown = `## 📊 Content Statistics

| Feature | Line Count |
|---------|-----------|
${features.map((f) => `| ${f.name} | ${stats[f.name]} |`).join('\n')}
| **TOTAL** | **${totalLines}** |

---
Generated on: ${new Date().toISOString()}
`;

  return { markdown, stats, totalLines };
}

/**
 * Write statistics to a file
 */
function writeStats() {
  const { markdown, stats, totalLines } = generateReleaseNotes();

  const outputFile = path.join(projectRoot, '.release-stats.md');
  fs.writeFileSync(outputFile, markdown);

  // Also write as JSON for easier parsing in GitHub Actions
  const jsonFile = path.join(projectRoot, '.release-stats.json');
  fs.writeFileSync(
    jsonFile,
    JSON.stringify({ features: stats, total: totalLines, generated: new Date().toISOString() }, null, 2)
  );

  console.log(`✅ Statistics written to ${outputFile}`);
  console.log(`✅ JSON stats written to ${jsonFile}`);
}

// Run
try {
  writeStats();
  process.exit(0);
} catch (error) {
  console.error('❌ Error:', error.message);
  process.exit(1);
}
