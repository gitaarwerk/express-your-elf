ExpressYourElf.BombsGoBurr = {}
local feature = "BombsGoBurr";

function ExpressYourElf.BombsGoBurr.SpeakHaste(hasteType)
    local typeOfHaste = hasteType or "Debug"
    local prefix = ExpressYourElfVars.usePrefix == true and "[${typeOfHaste}]: " or ""
    local playerName, playerGender, playerClass, playerRace, playerLevel  = ExpressYourElf.Helpers.GetPlayerInformation()

    local hasteLines = {
        "There is more to life than simply increasing its speed.",
        "If everything seems under control, you're not going fast enough.",
        "${typeOfHaste} is all about speed. Hot, nasty, badass speed.",
        "DPS go buuurrrrrr and so does our health. We will accept our fate.",
        "The only thing faster than the speed of ${typeOfHaste} is the speed of forgetfulness. Good thing we have other people to help us remember.",
    }

    if (playerRace == "Undead") then
        table.insert(hasteLines, "In a world addicted to speed, I blur the moments into one unholy smear.");
    end

    if (typeOfHaste == "Drums") then 
        table.insert(hasteLines, "BAM BAM BOOM BOOM!")
    end

    if (typeOfHaste == "Time Warp") then 
        table.insert(hasteLines, "The beauty of me putting down a table, is that I've spiked your food. And it finally seems to start working now!");
    end

    if (typeOfHaste == "Ancient Hysteria") then 
        table.insert(hasteLines, "Rawrrr, rawrrr, RAWRRR!!");
        table.insert(hasteLines, "I do as the bombs will. What relic we kill, when we extend bursting, is all as the Lord Pheromone Bomb deems fit. Praise be.");
    end

    if (typeOfHaste == "Bloodlust") then 
        table.insert(hasteLines, "Casting Heroi... ehh I mean Bloodlust!");
    end

    if (typeOfHaste == "Heroism") then 
        table.insert(hasteLines, "Casting Bloo... ehh I mean Heroism!");
    end

    local pickedLine = hasteLines[fastrandom(1, #hasteLines)]

    return ExpressYourElf.Helpers.parseText(
        prefix .. pickedLine, {
            playerName = playerName,
            playerGender = playerGender,
            playerClass = playerClass,
            playerRace = playerRace,
            playerLevel = playerLevel,
            playerManWoman = playerManWoman,
            playerGuyGirl = playerGuyGirl,
            typeOfHaste = typeOfHaste,
        })
end

function ExpressYourElf.BombsGoBurr.Run()
    local line
    local groupChannel
    local outputChannel
    local typeOfHaste

    ExpressYourElf.BombsGoBurr.Frame = CreateFrame("Frame")
    ExpressYourElf.BombsGoBurr.Frame:RegisterEvent("UNIT_SPELLCAST_SENT")

    ExpressYourElf.BombsGoBurr.Frame:SetScript("OnEvent", function (self, event, ...)
        groupChannel = IsInRaid() and "RAID" or IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT" or "PARTY"
        isInParty = UnitInParty("player")

        -- Early return
        if (ExpressYourElfVars.bombsGoBurrIsOn == false) then 
            return
        end
        
        if event == "UNIT_SPELLCAST_SENT" then 
            local unit, target, castGUID, spellId = ...
            
            typeOfHaste = ExpressYourElf.SpellIds.isBigHasteCast(spellId)
            -- stop executing if not applied big cd haste buff
            if (typeOfHaste == false and ExpressYourElfVars.debugMode == false) then
                return
            end

            local isInRaid = UnitInRaid(target)
            local isInParty = UnitInParty(target)
            local line = ExpressYourElf.BombsGoBurr.SpeakHaste(typeOfHaste)

            if (isInRaid or isInParty) then                                                                                   
                SendChatMessage(line, groupChannel, nil, index)
            end

            debugPrint(feature, line);
        end 
    end)    
end

ExpressYourElf.BombsGoBurr.Run()
