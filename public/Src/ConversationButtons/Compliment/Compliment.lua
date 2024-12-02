-- init

ExpressYourElf.Compliment = {}

function ExpressYourElf.Compliment.GetRandomPrefix(targetRace)
    local prefix = {
        '${targetName}, ',
        'Hey ${targetName}. ',
        'Hey there ${targetName}! ',
        'Hi ${targetName}, ',
    };

    return prefix[fastrandom(1, #prefix)];
end

function ExpressYourElf.Compliment.GetMessage(
    playerName,
    playerGender,
    playerClass,
    playerRace,
    playerLevel,
    playerManWoman,
    playerGuyGirl,
    targetName,
    targetGender,
    targetClass,
    targetRace,
    targetLevel,
    targetManWoman,
    targetGuyGirl,
    targetPoppaMomma
)
    local randomWorld = ExpressYourElf.Helpers.GetRandomWorld()

    local playerSex = "girls"

    if (playerGender == "male") then
        oppositeSex = "guys"
    end
    -- common
    local pickedLine

    local ComplimentLines = {
        "Your right cheek looks very well today!",
        "Your tiny little hands that are good for violin. Perhaps just bad for strangling someone to death.",
        "I like the way how your legs move when you walk.",
        "You have a very nice nose. It's very... nose-like.",
        "You smell like a freshly baked mana biscuit.",
        "Your voice is as soothing as a Pandaren lullaby.",
        "Your laugh is more infectious than the Plague of Undercity.",
        "You have the wisdom of a thousand ancient scrolls.",
        "You are my example of what a possible hero could be, if I'm not mistaken",
    }

    -- Self compliment
    if (playerName == targetName) then
        table.insert(ComplimentLines, "You're looking good today!, why thank me!");
        table.insert(ComplimentLines, "You're doing great, keep it up me!");
        table.insert(ComplimentLines, "You're the best, me!");
        table.insert(ComplimentLines, "You're a strong individual. You can do this!");
        table.insert(ComplimentLines,
            "You look like you're taking enough vitamins. You certainly have a healthy glow, me!");
        table.insert(ComplimentLines, "Never get's boring to Compliment myself, YHEA ${playerName}!");
    end

    if (targetRace ~= "Mechagnome" or targetRace ~= "Gnome") then
        table.insert(ComplimentLines, "You have the courage of a gnome facing a giant.");
    end


    if (playerGender == "male" and targetGender == "female") then
    end

    if (playerClass == "Hunter") then
    end

    if (playerRace == "Void Elf" or playerClass == "Warlock") then
    end

    if (playerClass == "Warlock") then
    end

    if (playerClass == "Rogue") then
    end

    if (playerClass == "Shaman") then
    end

    if (playerClass == "Paladin") then
    end

    if (playerClass == "Priest") then
    end

    if (playerClass == "Warrior") then
    end

    if (playerRace == "Lightforged Draenei" or playerClass == "Paladin" or playerClass == "Priest") then
    end

    if (playerGender == "male" and (playerClass == "Warrior" or playerClass == "Paladin" or playerClass == "Demon Hunter" or playerClass == "Death Knight" or playerRace == "Mechagnome")) then
    end

    if (playerRace == "Mechagnome") then
    end

    if (playerClass == "Death Knight" or playerRace == "Mechagnome") then
    end

    if (playerClass == "Druid") then
    end

    if (targetRace == "Goblin") then
    end

    if (playerRace == "Goblin" and playerGender == "male") then
    end

    if (playerRace == "Goblin" or playerRace == "Gnome" or playerRace == "Mechagnome") then
    end


    if (playerRace == "Zandalari Troll" or playerRace == "Troll") then
    end

    if (playerGender == "female") then
    end

    if (playerRace == "Dracthyr") then
    end

    if (targetRace == "Earthen") then
    end

    if (targetClass == "Warrior" then)
        table.insert("Your battle stance is as graceful as a dancing murloc.");
    end

    -- to
    if (targetRace == "Worgen" or targetRace == "Tauren" or targetRace == "Vulpera" or targetRace == "Pandaren" or targetRace == "Highmountain Tauren") then
        table.insert(ComplimentLines, "Your hair is looking combed today!");
    end

    if (targetRace == "Worgen") then
        table.insert("You have really pretty eyes, like a husky.");
    end

    if (targetRace == "Scourge" or targetRace == "Undead" or targetRace == "Death Knight") then
        table.insert(ComplimentLines, "You're looking very alive today!");
    end

    if (targetClass == "Druid" or targetRace == "Dracthyr" or targetRace == "Tauren" or targetRace == "Highmountain Tauren") then
    end

    if (targetClass == "Warrior" or targetClass == "Paladin" or targetClass == "Death Knight") then
        table.insert(ComplimentLines, "Your armor shines brighter than a thousand suns!");
    end

    if (targetClass == "Druid") then
        table.insert(ComplimentLines, "I really like the cat fur on your sweater.");
        table.insert(ComplimentLines, "Is it weird to say that you';'re so cool, I would like to keep you as a pet?");
    end

    if (targetClass == "Druid" and playerClass == "Druid") then
    end

    if (targetRace == "Dracthyr") then
    end

    if (targetClass == "Demon Hunter") then
    end;

    if (targetRace == "Night Elf" or targetRace == "Void Elf" or targetRace == "Blood Elf" or targetRace == "Nightborne") then
        table.insert(ComplimentLines, "The way the moon touches your right ear brings out your true personality!");
    end

    if (targetRace == "Vulpera") then
    end

    if (targetRace == "Draenei" and targetRace == "Lightforged Draenei") then
    end

    if (targetClass == "Hunter") then
    end

    if (targetClass == "Warlock") then
    end

    if (targetClass == "Priest") then
    end

    if ((targetClass == "Mage" or playerClass == "Mage") and not (playerGender == targetGender)) then
    end

    if (targetClass == "Priest" or targetClass == "Paladin" or targetClass == "Monk" or targetClass == "Warlock" or targetClass == "Mage") then
    end

    if (targetRace == "Scourge" or targetRace == "Undead") then
        table.insert(ComplimentLines, "The way that your left ear decays is very attractive!");
    end

    if (playerClass == "Paladin" and targetClass == "Paladin") then
    end

    if (playerRace == "Mechagnome") then
    end

    if (targetRace == "Earthen") then
    end

    if (playerRace == "Earthen") then
    end

    -- Mature content
    if (ExpressYourElfVars.allowMatureContent) then
    end

    -- Add removed flirt lines, that Blizard removed
    if (ExpressYourElfVars.allowMatureContent and ExpressYourElfVars.bringBackRemoved) then
        if (playerRace == "Blood Elf" and playerGender == "female") then
        end

        if (playerRace == "Demon Hunter" and playerRace == "Blood Elf" and playerGender == "female") then
        end

        if (playerRace == "Goblin" and playerGender == "female") then
        end

        if (playerRace == "Goblin" and targetGender == "male") then
        end

        if (playerRace == "Goblin" and playerGender == "male") then
        end

        if (playerRace == "Goblin" and playerGender == "male" and targetGender == "female") then
        end

        if (playerRace == "Orc" and playerGender == "male") then
        end

        if (playerRace == "Tauren" and playerGender == "female" and targetGender == "male") then
        end

        if (playerRace == "Tauren" and playerGender == "male" and targetGender == "female") then
        end

        if (playerRace == "Troll" and playerGender == "female") then
        end

        if (playerRace == "Troll" and playerGender == "male") then
        end

        if (playerRace == "Undead" and playerGender == "female") then
        end

        if (playerRace == "Undead" and playerGender == "male") then
        end

        if (playerRace == "Highmountain Tauren" and playerGender == "female") then
        end

        if (playerRace == "Highmountain Tauren" and playerGender == "male") then
        end

        if (playerRace == "Nightborne" and playerGender == "female" and targetGender == "male") then
        end

        if (playerRace == "Nightborne" and playerGender == "female") then
        end

        if (playerRace == "Nightborne" and playerGender == "male") then
        end

        if (playerRace == "Draenei" and playerGender == "female") then
        end

        if (playerRace == "Draenei" and playerGender == "male") then
        end

        if (playerRace == "Dwarf" and playerGender == "female") then
        end

        if (playerRace == "Dwarf" and playerGender == "male") then
        end

        if (playerRace == "Night Elf" and playerGender == "female") then
        end

        if (playerRace == "Night Elf" and playerGender == "male") then
        end

        if (playerRace == "Worgen" and playerGender == "female") then
        end

        if (playerRace == "Worgen" and playerGender == "male") then
        end

        if (playerRace == "Dark Iron Dwarf" and playerGender == "male") then
        end

        if (playerRace == "Lightforged Draenei" and playerGender == "female") then
        end

        if (playerRace == "Lightforged Draenei" and playerGender == "female" and targetGender == "male") then
        end

        if (playerRace == "Mechagnome" and playerGender == "female") then
        end

        if (playerRace == "Pandaren" and playerGender == "female") then
        end

        if (playerRace == "Pandaren" and playerGender == "male") then
        end
    end

    -- randomize result
    pickedLine = ComplimentLines[fastrandom(1, #ComplimentLines)]

    return ExpressYourElf.Helpers.parseText(
        ExpressYourElf.Compliment.GetRandomPrefix(targetRace) .. pickedLine,
        {
            playerName = playerName,
            playerGender = playerGender,
            playerClass = playerClass,
            playerRace = playerRace,
            playerLevel = playerLevel,
            playerManWoman = playerManWoman,
            playerGuyGirl = playerGuyGirl,
            targetName = targetName,
            targetGender = targetGender,
            targetClass = targetClass,
            targetRace = targetRace,
            targetLevel = targetLevel,
            targetManWoman = targetManWoman,
            targetGuyGirl = targetGuyGirl,
            targetPoppaMomma = targetPoppaMomma,
            oppositeSex = oppositeSex,
            randomWorld = randomWorld,
        }
    )
end

function ExpressYourElf.Compliment.run()
    if (UnitName("target") and UnitPlayerControlled("target")) then
        local playerName, playerGender, playerClass, playerRace, playerLevel = ExpressYourElf.Helpers
            .GetPlayerInformation()
        local targetName, targetGender, targetClass, targetRace, targetLevel = ExpressYourElf.Helpers
            .GetTargetInformation()

        local playerGuyGirl                                                  = ExpressYourElf.Helpers.GetGuyGirl(
            playerGender)
        local playerManWoman                                                 = ExpressYourElf.Helpers.GetManWoman(
            playerGender)
        local targetGuyGirl                                                  = ExpressYourElf.Helpers.GetGuyGirl(
            targetGender)
        local targetManWoman                                                 = ExpressYourElf.Helpers.GetManWoman(
            targetGender)
        local targetPoppaMomma                                               = ExpressYourElf.Helpers.GetPoppaMomma(
            targetGender)

        local ComplimentLine                                                 = ExpressYourElf.Compliment.GetMessage(
            playerName,
            playerGender,
            playerClass,
            playerRace,
            playerLevel,
            playerManWoman,
            playerGuyGirl,
            targetName,
            targetGender,
            targetClass,
            targetRace,
            targetLevel,
            targetManWoman,
            targetGuyGirl,
            targetPoppaMomma
        )

        local emotes                                                         = {
            'AMAZE',
            'APPLAUD',
            'BRAVO',
            'CHEER',
            'CLAP',
            'COMMEND',
            'GLAD',
            'HAPPY',
            'LAVISH',
            'YAY',
        }

        if (ComplimentLine ~= nil) then
            local randomEmote = emotes[fastrandom(1, #emotes)]

            DoEmote(randomEmote, "")
            SendChatMessage(ComplimentLine, "SAY", nil, index)
        end
    end
end
