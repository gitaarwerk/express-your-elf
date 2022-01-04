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
        "My teeth itch.",
        "My nipple is broken.",
        "My hair hurts.",
        "If it weren’t for the kobolds, we’d all be watching TV by candlelight.",
        "My eye socket is warm.",
        "Have you ever tried sleeping in water?",
        "I'm going to get my toe nail pierced this weekend, you?",
        "There are only three things in life that truly matter: loot, kill and respawn.",
        "It's freezing in Winterspring, we need global warming!",
        "The world is not doing well and we're going great.",
        "What if Jaina was Warchief. She would build great, great wall of ice.",
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
        'No matter what you do – epics, no epic – it doesn’t matter. You have people that are mentally ill. And they’re gonna come through the cracks. And they’re going to do things that ${playerRace}s will not even believe are possible.',
        'Yes, I am an agent of the Legion, but my duties are largely ceremonial.',
        'Did you know my powers can only be used for good.',
        'I don’t work here. I’m a consultant.',
        'My toys! My toys! I can’t do this job without my toys!',
        'It might look like I’m doing nothing, but at the cellular level I’m really quite busy.',
        'At least I have a positive attitude about my destructive habits.',
        'Someday, we’ll look back on this, laugh nervously and change the subject.',
        'Did you know that Zovaal, The Jailer was actually called Chaining Tatum?',
        'Remember that time when I said I were cool? I lied.',
        'The tortollan have been betraying me since the start! Now I kill a Tortollan a day, saving a plastic straw!', -- Wildhuntz-Bouderfist EU
        'I’m really easy to get along with once you people learn to worship me.',
        'Please don’t tell my Arthas that I used his 2008 Frostmourne to destroy the town of Gilneas, Azeroth in 2010',
        "Those warriors from the Maw? They've got curved swords. Curved. Swords.",
        "Goblin wind turbines kill 13-39 million birds and bats every year!",
        "We’re rounding ’em up in a very ${playerRace} way, in a very nice way. And they’re going to be happy because they want to be legalized. And, by the way, I know it doesn’t sound nice. But not everything is nice.",
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

    if (playerRace == "Tauren" or playerRace == "Highmountain Tauren") then
        table.insert(listOfPhrases, "Chocolate milk comes from me, you know?")
    end

    if (playerRace == "Draenei" or playerRace == "Lightforged Draenei") then
        table.insert(listOfPhrases, "T'paartos greets puny one.")
        table.insert(listOfPhrases, "T'paartos!")
    end

    if (playerClass == "Warlock" or playerClass == "Demon Hunter") then
        table.insert(listOfPhrases, "I never understood Fel.")
        table.insert(listOfPhrases, "Drink fel, stay fit, die anyway.")
    end

    if (playerClass == "Death Knight" or targetRace == "Scourge" or targetRace == "Undead") then
        table.insert(listOfPhrases, "It's true, a windmill killed me.")
        table.insert(listOfPhrases, "My parents moved a lot when I died as a kid. But I always found them.")
    end

    if (playerClass == "Mage") then
        table.insert(listOfPhrases, "Iron Sword Huh? What Are You Killing? Butterflies?")
        table.insert(listOfPhrases, "I was elected to represent the citizens of Dalaran, not Gnomeregan")
    end

    if (playerClass == "Hunter" or playerClass == "Demon Hunter") then
        table.insert(listOfPhrases, "But Hunter, where's Hunter? Where is Hunter, by the way?")
    end

    if (playerRace == "Gnome" or playerRace == "Mechagnome") then
        table.insert(listOfPhrases, "Crowded elevators smell different to gnomes.")
    end

    if (playerClass == "Paladin" or playerClass == "Priest" or playerRace == "Lightforged Draenei") then 
        table.insert(listOfPhrases, "Is there a way we can do something like that by injection inside or almost a cleaning? It sounds interesting to me, so we'll see. But the whole concept of the light, the way it kills it in one minute. That's pretty powerful.")
    end

    if (playerRace == "Void Elf" or playerClass == "Warlock") then
        table.insert(flirtLines, "I said 'No' to the voices, but they wouldn’t listen.")
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
    local listOfPhrases = {
        "Saw ${targetName}, wanted it, bought it, used it once, kept it in my house for ten years, gave it away."
    }

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
