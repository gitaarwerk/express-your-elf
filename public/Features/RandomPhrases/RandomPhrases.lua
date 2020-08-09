-- init
ExpressYourElf.RandomPhrases = {}

function ExpressYourElf.RandomPhrases.GetRandomMessage(
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
    local oppositeSex = "men"

    if (playerGender == "male") then
        oppositeSex = "women"
    end

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
        "Everything is a mount, as long as you're brave enough.",
        "Just an ordinary gas cloud. But watch out, because that's no ordinary gas cloud!",
        "I’m intelligent. Some people would say I’m very, very, very intelligent.",
        "I think the only difference between me and other guildies is that I'm more honest and my ${oppositeSex} are more beautiful.",
        "I saved a big war. I saved a couple of them.",
        "He calls me Mr. ${playerRace}. I've known this guy forever. He used to call me, 'Hey, ${playerName}, let's go out to dinner.' You know, before, he'll go, 'Hey, let's go out to dinner.' Now he goes, 'Mr. ${playerRace}, ${playerSirMam}, how are you?'",
        'No, no. But I don`t say -- I say flames, we`ll put out the flames. And we`ll put out in some cases just burning embers. We also have burning embers. We have embers and we do have flames. Mount Hyjal became more flame like, but it`s going to be under control.'
    }

    -- self
    if (playerRace == "Draenei" or playerRace == "Night Elf" or playerRace == "Tauren" or playerRace == "Highmountain Tauren" or playerRace == "Lightforged Draenei" or playerRace == "Blood Elf") then
        table.insert(listOfPhrases, "I always wanted to be taller.")
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

    if (playerClass == "Hunter" or playerClass == "Demon Hunter") then
        table.insert(listOfPhrases, "But Hunter, where's Hunter? Where is Hunter, by the way?")
    end

    if (playerRace == "Gnome" or playerRace == "Mechagnome") then
        table.insert(listOfPhrases, "Crowded elevators smell different to gnomes.")
    end

    -- target
    if (targetName) then
        table.insert(listOfPhrases, "${targetName}, You must go forth into the world, with passion, courage in your conviction, and most importantly be true to yourself. I did it!")
        table.insert(listOfPhrases, "${targetName} is somebody that I've always liked, but a lot of people like ${targetName}. Some people probably don't like ${targetName}, but ${targetName}'s somebody I've always liked.")
    end

    if (targetRace) then
        table.insert(listOfPhrases, "People like the Pandaren, abusing their dual factionship and smuggling in illegal ${targetRace} among other disgusting deplorables, how sad their lives must be.")
        table.insert(listOfPhrases, "I have tremendous respect for ${targetRace}.")
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


    pickedPhrase = listOfPhrases[math.random(1, #listOfPhrases)]

    return ExpressYourElf.Helpers.parseText(
        pickedPhrase,
        {
            playerName = playerName,
            playerGender = playerGender,
            playerClass = playerClass,
            playerRace = playerRace,
            playerSirMam = playerSirMam,
            playerLevel = playerLevel,
            oppositeSex = oppositeSex,
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

    local RandomPhrase = ExpressYourElf.RandomPhrases.GetRandomMessage(
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

    SendChatMessage(RandomPhrase, "SAY", nil, index);
end
