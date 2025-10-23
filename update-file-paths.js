/**
 * Updates Lua/XML/TOC file paths inside a WoW addon project after minification.
 * Converts all references from Src/... → relative paths inside the addon.
 */
const fs = require("fs");
const path = require("path");

const args = process.argv.slice(2);
const srcDirToc = "./public";
const srcDir = args[0] || "./public/Src";
const outDir = args[1] || "./public/Dist";

if (!fs.existsSync(outDir)) {
    console.error(`❌ Output directory '${outDir}' not found.`);
    process.exit(1);
}

console.log(`🔍 Updating paths in XML and TOC files within '${outDir}' (source prefix: '${srcDir}')...`);

function walkDir(dir, callback) {
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
        const full = path.join(dir, entry.name);
        if (entry.isDirectory()) walkDir(full, callback);
        else callback(full);
    }
}

function updateXmlPaths(content, srcFolder, targetFolder) {
    // Escape backslashes for regex
    const srcPattern = srcFolder.replace(/\\/g, "\\\\");
    const regex = new RegExp(`(["']?)${srcPattern}([\\\\/][\\w\\-_/]+)(["']?)`, "gi");

    return content.replace(regex, (match, preQuote, innerPath, postQuote) => {
        // Remove the leading slash/backslash from innerPath
        const cleaned = innerPath.replace(/^([\\/]+)/, "");
        return `${preQuote}${targetFolder}/${cleaned}${postQuote}`;
    });
}

function updateTocPaths(content, srcFolder, targetFolder) {
    const lines = content.split("\n");
    const updatedLines = lines.map((line) => {
        // Trim whitespace
        const trimmed = line.trim();
        if (trimmed.startsWith(srcFolder + "/") || trimmed.startsWith(srcFolder + "\\")) {
            // Replace the src folder with target folder
            return targetFolder + "/" + trimmed.slice(srcFolder.length + 1);
        }
        return line;
    });
    return updatedLines.join("\n");
}


walkDir(outDir, (file) => {
    if (file.endsWith(".xml")) {
        const original = fs.readFileSync(file, "utf8");
        const updated = updateXmlPaths(original, "Src", "Dist");
        if (updated !== original) fs.writeFileSync(file, updated, "utf8");
    }
});

walkDir(srcDirToc, (file) => {
    if (file.endsWith(".toc")) {
        const original = fs.readFileSync(file, "utf8");
        const updated = updateTocPaths(original, "Src", "Dist");
        if (updated !== original) fs.writeFileSync(file, updated, "utf8");
    }
});

console.log("✨ Path update complete.");
