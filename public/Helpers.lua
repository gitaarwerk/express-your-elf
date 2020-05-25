ExpressYourElf = {}

ExpressYourElf.Helpers = {}

function ExpressYourElf.Helpers.ToggleVisibility()
        local frame = getglobal("ExpressYourElf_Frame");
        if (frame) then
            if(  frame:IsVisible() ) then
                ExpressYourElfIsShown = false
                frame:Hide();
            else
                ExpressYourElfIsShown = true
                frame:Show();
            end
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


function ExpressYourElf.Helpers.GetGuyGirl(gender)
  if (gender == "male") then
    return "guy"
  end

  return "girl"
end

function ExpressYourElf.Helpers.GetManWoman(gender)
    if (gender == "male") then
        return "man"
    end

    return "woman"
end

function ExpressYourElf.Helpers.GetPoppaMomma(gender)
    if (gender == "male") then
        return "poppa"
    end

    return "momma"
end


function getCharacterinfo(target)
    local genderTable = { "neuter or unknown", "male", "female" };
    local playerClass, englishClass, classIndex = UnitClass(target);
    local name, upName, level = UnitName(target)
    local unitLevel = UnitLevel(target)
    local gender = genderTable[UnitSex(target)]
    local race, raceEn = UnitRace(target);

    return name, gender, playerClass, race, unitLevel
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
