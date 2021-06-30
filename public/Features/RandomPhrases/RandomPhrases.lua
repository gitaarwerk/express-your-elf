-- init
ExpressYourElf.RandomPhrases = {}

function ExpressYourElf.RandomPhrases.GetRandomWorld()
    local listOfWolds = {
        "Azeroth", 
        "The Shadowlands", 
        "Outland", 
        "Argus",
        "Draenor"
    }
    
    return listOfWolds[fastrandom(1, #listOfWolds)]
end 

function ExpressYourElf.RandomPhrases.GetRandomMessage(
playerName,
playerGender,
playerClass,
playerRace,
playerLevel,
playerHisHer,
playerSirMam
)
    -- opposite
    local oppositeSex = "men"

    if (playerGender == "male") then
        oppositeSex = "women"
    end

    local oppositHeShe = "he"
    if (playerGender == "male") then
        oppositHeShe = "she"
    end

    local randomWorld = ExpressYourElf.RandomPhrases.GetRandomWorld()


    local pickedPhrase
    local listOfPhrases = {
        "You no take candle.",
        "Knock knock",
        "I took an arrow to the knee.",
        "I put on my robe and wizard hat.",
        "Who likes short shorts?",
        "The beauty of me is that I’m very rich.",
        "An 'extremely credible source' has called me and told me that Sylvanas's birth certificate is a fraud.",
        "My fingers are long and beautiful, as, it has been well documented, are various other parts of my body.",
        "I have never seen a thin Elf drinking Diet Coke.",
        "Brb, my goldfish is on fire.",
        "There are only three things in life that truly matter: loot, kill and respawn.",
        "It's freezing in Winterspring, we need global warming!",
        "The world is not doing well and we're going great.",
        "What if Trump was Warchief. He would build a great, great wall.",
        "I think I am actually humble. I think I’m much more humble than you would understand.",
        "Everything is a mount, as long as you’re brave enough.",
        "Just an ordinary gas cloud. But watch out, because that's no ordinary gas cloud!",
        "I’m intelligent. Some people would say I’m very, very, very intelligent.",
        "I think the only difference between me and other guildies is that I'm more honest and my ${oppositeSex} are more beautiful.",
        "I saved a big war. I saved a couple of them.",
        "Have you seen the outrageous prices here?",
        "I am the only one who can make ${randomWorld} truly great again!",
        'He calls me Mr. ${playerRace}. I’ve known this guy forever. He used to call me, "Hey, ${playerName}, let’s go out to dinner."s You know, before, he’ll go, "Hey, let’s go out to dinner." Now he goes, "Mr. ${playerRace}, ${playerSirMam}, how are you?"',
        'No, no. But I don`t say -- I say flames, we`ll put out the flames. And we`ll put out in some cases just burning embers. We also have burning embers. We have embers and we do have flames. Mount Hyjal became more flame like, but it`s going to be under control.',
        'We have it totally under control. It’s only one person coming in from The Maw. It’s going to be just fine.',
        'The burning legion will have much greater respect for our worlds when I am leading it than when their people have led it.',
        'Will someone from Sylvana’s regime please inform her that I too have a Nuclear Button, but it is a much bigger and more powerful one than hers, and my Button works!',
        'If it weren’t for Kil’Jaeden, we’d all be still fighting in Gnomeregan!',
        'I’m pretty useless at giving advice. Can I interest you in a sarcastic comment instead?',
        'Kids believe in fairy tales. I’ve moved on to fantasy worlds. Where am I actually?',
        'Shush! I can’t hear what the voices are saying.',
        'Does this rag smell like chloroform to you?',
        'Yes, I am an agent of the Legion, but my duties are largely ceremonial.',
        'Did you know my powers can only be used for good.',
        'I don’t work here. I’m a consultant.',
        'My toys! My toys! I can’t do this job without my toys!',
        'It might look like I’m doing nothing, but at the cellular level I’m really quite busy.',
        'At least I have a positive attitude about my destructive habits.',
        'Someday, we’ll look back on this, laugh nervously and change the subject.',
        'Remember that time when I said I were cool? I lied.',
        'People love me. And you know what, I have been very successful. Everybody loves me. ',
        'I’m really easy to get along with once you people learn to worship me.',
        'How was the weekend, someone asked? Well, on my first date, ${oppositHeShe} said, “I want to take you to the cemetery to meet my parents you might be the one.”'
    }

    -- self
    if (playerRace == "Draenei" or playerRace == "Night Elf" or playerRace == "Tauren" or playerRace == "Highmountain Tauren" or playerRace == "Lightforged Draenei" or playerRace == "Blood Elf") then
        table.insert(listOfPhrases, "I always wanted to be taller.")
    end

    if (playerGender == "male") then 
        table.insert(listOfPhrases, "Hi, I'm the new Milkman")
    else
        table.insert(listOfPhrases, "Hi, I'm the new Milkwoman")
    end 

    if (playerRace == "Goblin" or playerRace == "Gnome" or playerRace == "Mechagnome") then
        table.insert(listOfPhrases, "We've got new planes, we've got new rockets, new missiles, we've got new everything, and it's either here or coming in.")
    end

    if (playerRace == "Draenei" or playerRace == "Lightforged Draenei") then
        table.insert(listOfPhrases, "T'paartos greets puny one.")
        table.insert(listOfPhrases, "T'paartos!")
    end

    if (playerClass == "Warlock" or playerClass == "Demon Hunter") then
        table.insert(listOfPhrases, "I never understood Fel.")
    end

    if (playerClass == "Mage") then
        table.insert(listOfPhrases, "I was elected to represent the citizens of Dalaran, not Gnomeregan")
    end

    if (playerClass == "Hunter" or playerClass == "Demon Hunter") then
        table.insert(listOfPhrases, "But Hunter, where's Hunter? Where is Hunter, by the way?")
    end

    if (playerRace == "Gnome" or playerRace == "Mechagnome") then
        table.insert(listOfPhrases, "Crowded elevators smell different to gnomes.")
    end

    if (playerClass == "Demon Hunter") then
        table.insert(listOfPhrases, "Drink fel, stay fit, die anyway.")
    end


    pickedPhrase = listOfPhrases[fastrandom(1, #listOfPhrases)]

    return ExpressYourElf.Helpers.parseText(
        pickedPhrase,
        {
            playerName = playerName,
            playerGender = playerGender,
            playerClass = playerClass,
            playerRace = playerRace,
            playerSirMam = playerSirMam,
            playerLevel = playerLevel,
            playerHisHer = playerHisHer,
            oppositeSex = oppositeSex,
            randomWorld = randomWorld,
            oppositHeShe = oppositHeShe
        }
    )
end


function ExpressYourElf.RandomPhrases.GetRandomMessageToTarget(
playerName,
playerGender,
playerClass,
playerRace,
playerLevel,
playerHisHer,
playerSirMam,
targetName,
targetGender,
targetClass,
targetRace,
targetLevel,
targetHisHer
)
    local pickedPhrase
    local listOfPhrases = {}

    -- target
    if (targetName) then
        table.insert(listOfPhrases, "${targetName}, You must go forth into the world, with passion, courage in your conviction, and most importantly be true to yourself. I did it!")
        table.insert(listOfPhrases, "${targetName} is somebody that I've always liked, but a lot of people like ${targetName}. Some people probably don't like ${targetName}, but ${targetName}'s somebody I've always liked.")
    end

    if (targetRace) then
        table.insert(listOfPhrases, "People like the Pandaren, abusing their dual factionship and smuggling in illegal ${targetRace} among other disgusting deplorables, how sad their lives must be.")
        table.insert(listOfPhrases, "I have tremendous respect for ${targetRace}s.")
    end

    if (targetLevel and targetLevel < 50) then
        table.insert(listOfPhrases, 'I steal yo soul and cast Lightning level 1,000,000. Your body explodes into a fine bloody mist, because you are only a level ${targetLevel} ${targetClass}.')
    end

    if (targetClass and targetClass == "Warlock") then
        table.insert(listOfPhrases, 'Uh, bing, bing, bong, bong, get out, demon!')
    end

    if (targetClass and targetClass == "Priest") then
        table.insert(listOfPhrases, "${targetName}, would you grab my arm, so I can tell my friends I’ve been touched by a Priest.")
    end


    pickedPhrase = listOfPhrases[fastrandom(1, #listOfPhrases)]

    return ExpressYourElf.Helpers.parseText(
        pickedPhrase,
        {
            playerName = playerName,
            playerGender = playerGender,
            playerClass = playerClass,
            playerRace = playerRace,
            playerSirMam = playerSirMam,
            playerLevel = playerLevel,
            playerHisHer = playerHisHer,
            targetName = targetName,
            targetGender = targetGender,
            targetClass = targetClass,
            targetRace = targetRace,
            targetLevel = targetLevel,
            targetHisHer = targetHisHer
        }
    )
end


function ExpressYourElf.RandomPhrases.run()
    local playerName, playerGender, playerClass, playerRace, playerLevel  = ExpressYourElf.Helpers.GetPlayerInformation()
    local targetName, targetGender, targetClass, targetRace, targetLevel, targetHisHer
    local playerHisHer = string.lower(ExpressYourElf.Helpers.GetHisHer(playerGender))
    local playerSirMam = string.lower(ExpressYourElf.Helpers.GetSirMam(playerGender))

    if(UnitName("target") and UnitPlayerControlled("target")) then
        targetName, targetGender, targetClass, targetRace, targetLevel  = ExpressYourElf.Helpers.GetTargetInformation()
        targetHisHer = string.lower(ExpressYourElf.Helpers.GetHisHer(targetGender))
    end

    -- get random phrases
    if(UnitName("target") and UnitPlayerControlled("target")) then
        local RandomPhraseTargeted = ExpressYourElf.RandomPhrases.GetRandomMessageToTarget(
            playerName,
            playerGender,
            playerClass,
            playerRace,
            playerLevel,
            playerHisHer,
            playerSirMam,
            targetName,
            targetGender,
            targetClass,
            targetRace,
            targetLevel,
            targetHisHer
        )
        SendChatMessage(RandomPhraseTargeted);
    else
        local RandomPhraseSelf = ExpressYourElf.RandomPhrases.GetRandomMessage(
            playerName,
            playerGender,
            playerClass,
            playerRace,
            playerLevel,
            playerHisHer,
            playerSirMam
        )
        SendChatMessage(RandomPhraseSelf);
    end
end
