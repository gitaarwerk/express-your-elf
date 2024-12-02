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
    local oppositeSex = "girls"
    local targetHisHer = "her"
    local targetHeShe = "she"
    local targetCowGirlBoy = "cowgirl"

    if (playerGender == "male") then
        oppositeSex = "guys"
        targetHisHer = "his"
    end

    if (targetGender == "male") then
        targetHeShe = "he"
        targetCowGirlBoy = "cowboy"
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
        "Watching ${targetName} try to pvp is like watching a cat trying to dance.",
        "${targetName}, I would challenge you to a battle of wits, but I see you are unarmed.",
        "${targetName}, I would call you a tool, but even they serve a purpose.",
        "Watching ${targetName} trying to doing stuff is always hilarious.",
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
        "Are you a fire alarm? Because you're loud and obnoxious, and it seems like you're here to ruin the moment.",
        "I'm not saying ${targetName} is stupid, but I would unplug ${targetHisHer} life support to charge my phone.",
        "Nobody’s remembering ${targetName} now.",
        "${targetName}, you look like you were drawn with my left hand.",
        "May ${targetName}'s sword rust and your spells fizzle!",
        "I’d rather dine with a murloc than share a battlefield with {targetName}.",
        "${targetName}'s brain must be enchanted with ignorance!",
        "${targetName} has the grace of a gnome in a dragon's lair.",
        "Have you seen how ${targetName} walks? It looks like one of those electric toy dogs that just walk backwards",
        "${targetName} couldn’t negotiate ${targetHisHer} way out of a draenei’s market stall.",
        "${targetName}'s presence is a blight upon this world, more vile than any plague.",
        "Even a trogg has more intelligence than ${targetName}.",
        "${targetName}, you look like you could fail a DNA test.",
        "I’d rather face a hundred kobolds than hear another word from ${targetName}.",
        "${targetName} couldn’t lead a raid of worgen into a meat locker.",
        "I’d sooner trust a forsaken with my soul than rely on ${targetName}'s tactics.",
        "I never attacked ${targetName} on looks, and believe me, there's plenty of subject matter right there.",
        "I can’t say I’ve seen ${targetName} actively, but I sure notice when ${targetHeShe} is not around.",
    }

    if (not targetRace == "Troll" or not targetRace == "Zandalari Troll") then
        table.insert(rudeLines, "${targetName}'s wit is as sharp as a Troll’s dullest spear.")
    end

    if (targetRace == "Dracthyr") then
        table.insert(rudeLines, "Calling ${targetName} a dragon is not only an insult, it's also a fact!")
        table.insert(rudeLines, "${targetName}'s scales only hide the fact ${targetHeShe} is a coward.")
        table.insert(rudeLines, "I bet ${targetName}'s parents never watched 'How to train your dragon'.")
    end

    if (targetRace == "Earthen") then
        table.insert(rudeLines, "Even a rock has more charm than ${targetName}.");
        table.insert(rudeLines, "${targetName}, You look like a great stepping stone (earthen).");
    end


    if (playerClass == "Shaman" or playerClass == "Warrior" or playerClass == "Paladin") then
        table.insert(rudeLines, "${targetName}'s combat skills are as effective as a wet paper shield.");
    end

    if (targetRace == "Worgen" or targetRace == "Tauren" or targetRace == "Vulpera" or targetRace == "Pandaren" or targetRace == "Highmountain Tauren") then
        table.insert(rudeLines,
            "You’re intelligence only comes from the symbiotic relationship with the flees you carry.");
    end

    if (targetRace == "Pandaren") then
        table.insert(rudeLines, "I bet ${targetName} is the only one who can get drunk on tea.");
        table.insert(rudeLines, "Look at ${targetName}, no wonder Pandaren are close to extinct.");
        table.insert(rudeLines,
            "The only reason why we let ${targetName} in our faction is because Pandaren are cute when they randomly roll over, trying to play.");
    end

    if (targetRace == "Nightborne" or targetRace == "Blood Elf" or targetRace == "Void Elf" or targetRace == "Night Elf") then
        table.insert(rudeLines, "Ew. ${targetName}'s ears are so big, it is full of earwax.");
    end

    if (targetName == "Monnah" or targetName == "Sueyen" or targetName == "Subzie" or playerName == "Monnah" or playerName == "Darkrider" or playerName == "Suyen" or playerName == "Suekiyaki" or targetName == "Subzie" or targetName == "Lightzie" or targetName == "Monnah") then
        table.insert(rudeLines, "${targetName}, Pannekoek!");
    end

    if (targetRace == "Lightforged Draenei" or targetRace == "Draenei") then
        table.insert(rudeLines, "Let me guess, ${targetName}... you're the first person in your family without a tail?");
    end

    if (targetRace == "Dracthyr") then
        table.insert(rudeLines, "Calling ${targetName} a dragon is not only an insult, it's also a fact!");
        table.insert(rudeLines, "I bet ${targetName} hatches chickens instead of dragons.");
    end

    if (targetClass == "Mage") then
        table.insert(rudeLines, "${targetName} is as useful as a broken wand in a magic duel.");
        table.insert(rudeLines,
            "You call that magic, ${targetName}? I’ve seen more impressive spells in a goblin’s firework show.");
    end

    if (targetClass == "Mage" or targetClass == "Priest" or targetClass == "Shaman" or targetClass == "Warlock") then
        table.insert(rudeLines,
            "All that intellect what is on ${targetName}'s gear doesn’t boost any intellect in the skull, unfortunately.");
    end

    if (targetClass == "Warlock" or targetClass == "Demon Hunter") then
        table.insert(rudeLines,
            "The Fel really did a number on you, ${targetName}. Luckily for you, you don't even know what numbers are.");
    end

    if (targetClass == "Warlock" or targetClass == "Void Elf") then
        table.insert(rudeLines, "The void never drained the sanity on ${targetName}, because there was none to begin with.");
    end

    if (targetClass == "Druid") then
        table.insert(rudeLines, "${targetName}, do you still love nature, despite what it did to you?");
        table.insert(rudeLines, "I’d slap ${targetName}, but that would be animal abuse.");
    end

    if (targetRace == "Tauren" or targetRace == "Highmountain Tauren") then
        table.insert(rudeLines, "I've never seen a ${targetCowGirlBoy} like ${targetName}, line dancing so badly.");
    end

    if (targetClass == "Druid" or targetRace == "Tauren" or targetRace == "Highmountain Tauren" or targetRace == "Worgen" or targetRace == "Vulpera") then
        table.insert(rudeLines, "Is That... Fur? Coming Out Of Your Ears?");
        table.insert(rudeLines, "You'll make a fine rug, ${targetName}!");
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
            targetHeShe = targetHeShe,
            targetHisHer = targetHisHer,
            oppositeSex = oppositeSex,
            targetCowGirlBoy = targetCowGirlBoy
        }
    )
end

function ExpressYourElf.IAmRude.run()
    if (UnitName("target") and UnitPlayerControlled("target")) then
        local playerName, playerGender, playerClass, playerRace, playerLevel = ExpressYourElf.Helpers
            .GetPlayerInformation()
        local targetName, targetGender, targetClass, targetRace, targetLevel = ExpressYourElf.Helpers
            .GetTargetInformation()

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
            'YAWN',
            'DOH',
            'DISSAPOINTMENT',
            'GROAN'
        }

        if (rudeLine ~= nil) then
            local randomEmote = emotes[fastrandom(1, #emotes)];

            DoEmote(randomEmote, "");
            SendChatMessage(rudeLine, "SAY", nil, index);
        end
    end
end
