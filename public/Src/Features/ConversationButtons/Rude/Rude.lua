-- init
ExpressYourElf.IAmRude = {}

function ExpressYourElf.IAmRude.GetMessage(
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
    local playerSex = "girls"

    if (playerGender == "male") then
        oppositeSex = "guys"
    end
    -- common
    local pickedLine
    local rudeLines = {
        "${targetName}, You're a son of a motherless ogre.",
        "${targetName}, I don't know what your problem is, but i bet it's hard to pronounce.",
        "I was going to give you a nasty look, ${targetName}, but I see you already have one.",
        "I am not insulting you, ${targetName}, I am describing you.",
        "I hope the rest of your day is as pleasant as you are, ${targetName}.",
        "${targetName}, It looks like your face was hit by ragnaros’ hammer.",
        "${targetName}, Letting you respawn was just a bug.",
        "${targetName} is a walking advertisement why a gnome and a tauren should never get it on.",
        "I bet ${targetName}'s parents are siblings.",
        "Go ahead, ${targetName}, tell them everything you know. It'll only take 10 seconds.",
        "${targetName} is not stupid, just possessed by a retarded ghost.",
        "I don't think ${targetName} is a fool. But then what's MY opinion against millions of other ${targetRace}s...",
        "So, a thought crossed ${targetName}'s mind. It must have been a long and lonely journey.",
        "${targetName}, Some day you will find yourself - and wish you hadn't!",
        "Thank you ${targetName}. We're all refreshed and challenged by your unique point of view.",
        "Any connection between ${targetName}'s reality and mine is purely coincidental.",
        "I like you, ${targetName}. You remind me of when I was young and stupid.",
        "${targetName} sounds reasonable... Time to up my medication.",
        "Sorry ${targetName}, I don’t have the energy to pretend to like you today.",
        "${targetName}, you know they can hear you, right?",
        "I want to live like Donald Duck, ${targetName}. Without pants, and without you.",
        "${targetName}, please cancel my subscription to your issues.",
        "Everyone’s entitled to act stupid once in a while, but ${targetName} is really abusing the privilege.",
        "Mirrors don’t lie, and lucky for ${targetName}, they also don’t laugh.",
        "${targetName}, believe in yourself. Someone has to.",
        "You may have noticed ${targetName}'s superpower. It’s invisibility.",
        "Yours is a face that only a mother and a friend like could love. You'd better find some friends soon.",
        "You still look 75 from a distance!",
        "Nobody’s remembering ${targetName} now.",
        "I never attacked ${targetName} on looks, and believe me, there's plenty of subject matter right there."
    }

    if (playerName == "Monnah" or playerName == "Darkrider" or playerName == "Suyen" or playerName == "Suekiyaki" or targetName == "Subzie" or targetName == "Lightzie" or targetName == "Monnah") then 
        table.insert(rudeLines, "${targetName}, Pannekoek!");
    end
    
    if (targetRace == "Lightforged Draenei" or targetRace == "Draenei") then
        table.insert(rudeLines, "Let me guess, ${targetName}... you're the first person in your family without a tail?");
    end

    if (targetRace == "Dracthyr") then
        table.insert(rudeLines, "Calling ${targetName} a dragon is not only an insult, it's also a fact!");
    end

    if (targetClass == "Mage" or targetClass == "Priest" or targetClass == "Shaman" or targetClass == "Warlock") then
        
        table.insert(rudeLines, "All that intellect what is on ${targetName}'s gear doesn’t boost any intellect in the skull, unfortunately.");
    end

    if (targetClass == "Druid") then
        table.insert(rudeLines, "${targetName}, do you still love nature, despite what it did to you?");
        table.insert(rudeLines, "I’d slap ${targetName}, but that would be animal abuse.");
        table.insert(rudeLines, "You'll make a fine rug, ${name}!");
    end

    if (targetClass == "Druid" or targetRace == "Tauren" or targetRace == "Highmountain Tauren" or targetRace == "Worgen" or targetRace == "Vulpera") then
        table.insert(rudeLines, "Is That... Fur? Coming Out Of Your Ears?");
    end

    -- randomize result
    pickedLine = rudeLines[fastrandom(1, #rudeLines)]

    return ExpressYourElf.Helpers.parseText(
        pickedLine,
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
            oppositeSex = oppositeSex
        }
    )
end


function ExpressYourElf.IAmRude.run()
    if(UnitName("target") and UnitPlayerControlled("target")) then
        local playerName, playerGender, playerClass, playerRace, playerLevel = ExpressYourElf.Helpers.GetPlayerInformation()
        local targetName, targetGender, targetClass, targetRace, targetLevel = ExpressYourElf.Helpers.GetTargetInformation()

        local playerGuyGirl = ExpressYourElf.Helpers.GetGuyGirl(playerGender)
        local playerManWoman = ExpressYourElf.Helpers.GetManWoman(playerGender)
        local targetGuyGirl = ExpressYourElf.Helpers.GetGuyGirl(targetGender)
        local targetManWoman = ExpressYourElf.Helpers.GetManWoman(targetGender)
        local targetPoppaMomma = ExpressYourElf.Helpers.GetPoppaMomma(targetGender)
        local rudeLine = ExpressYourElf.IAmRude.GetMessage(
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

        local emotes = {
            'THREATEN',
            'DOOM',
            'RUDE',
            'ANGRY',
            'BARK',
            'BITE',
            'BORED',
            'FROWN',
            'GLOAT',
            'INSULT',
            'MOCK',
            'MOON',
            'SHOO',
            'PITY',
            'RASP',
            'SLAP',
            'SIGH',
            'TAUNT',
            'YAWN'
        }

        if (rudeLine ~= nil) then
            local randomEmote = emotes[fastrandom(1, #emotes)];

            DoEmote(randomEmote, "");            
            SendChatMessage(rudeLine, "SAY", nil, index);
        end
    end
end
