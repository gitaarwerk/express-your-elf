ExpressYourElf = {}
ExpressYourElf.Helpers = {}

function dump(o)
  if type(o) == 'table' then
    local s = '{ '
    for k,v in pairs(o) do
      if type(k) ~= 'number' then k = '"'..k..'"' end
      s = s .. '['..k..'] = ' .. dump(v) .. ','
    end
    return s .. '} '
  else
    return tostring(o)
  end
end

function ExpressYourElf.Helpers.parseText(s, tab)
  return (s:gsub('($%b{})', function(w) return tab[w:sub(3, -2)] or w end))
end

function ExpressYourElf.Helpers.mergeTable(t1, t2)
    for i=1,#t2 do
      t1[#t1+1] = t2[i]
    end
    return t1
  end


function ExpressYourElf.Helpers.GetHisHer(gender)
  if (gender == "male") then
    return "His"
  end

  return "Her"
end


function ExpressYourElf.Helpers.GetHeShe(gender)
if (gender == "male") then
return "he"
end

return "she"
end


function ExpressYourElf.Helpers.GetShowGuyGirl(gender)
  print(gender)
  if (gender == "male") then
    return "show guy"
  end

  return "show girl"
end


function getCharacterinfo(target)
    local genderTable = { "neuter or unknown", "male", "female" };
    local playerClass, englishClass, classIndex = UnitClass(target);
    local name, upName, level = UnitName(target)
    local unitLevel = UnitLevel(target)
    local gender = genderTable[UnitSex(target)]
    local race, raceEn = UnitRace(target);

    return name, gender, playerClass, raceEn, unitLevel
end


function ExpressYourElf.Helpers.GetTargetInformation()
  if(UnitName("target")) then
        return getCharacterinfo("target")
    end

    return nil
end



function ExpressYourElf.Helpers.GetPlayerInformation()
    return getCharacterinfo("player")
end