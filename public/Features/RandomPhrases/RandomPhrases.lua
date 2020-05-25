-- init
ExpressYourElf.RandomPhrases = {}

function ExpressYourElf.RandomPhrases.GetRandomMessage(
playerName,
playerGender,
playerClass,
playerRace,
playerLevel,
playerHisHer,
targetName,
targetGender,
targetClass,
targetRace,
targetLevel,
targetHisHer
)
    local pickedPhrase
    local listOfPhrases = {

        "You no take candle.",
        "Knock knock",
        "I took an arrow to the knee.",
        "I put on my robe and wizard hat.",
        "Who likes short shorts?",
        "There are only three things in life that truly matter: loot, kill and respawn.",
        "It's freezing in Winterspring, we need global warming!",
        "The world is not doing well and we're going great.",
        "${targetName} is somebody that I've always liked, but a lot of people like ${targetName}. Some people probably don't like ${targetName}, but ${targetName}'s somebody I've always liked.",

    }

    if (playerRace == "Draenei" or playerRace == "Night Elf" or playerRace == "Tauren" or playerRace == "Highmountain Tauren" or playerRace == "Lightforged Draenei" or playerRace == "Blood Elf") then
        table.insert(listOfPhrases, "I always wanted to be taller.")
    end

    if (playerRace == "Draenei" or playerRace == "Lightforged Draenei") then
        table.insert(listOfPhrases, "T'paartos greets puny one.")
        table.insert(listOfPhrases, "T'paartos!")
    end

    if (playerRace == "Gnome" or playerRace == "Mechagnome") then
        table.insert(listOfPhrases, "Crowded elevators smell different to gnomes")
    end

    if (targetLevel < 50) then
        table.insert(listOfPhrases, 'I steal yo soul and cast Lightning level 1,000,000. Your body explodes into a fine bloody mist, because you are only a level ${targetLevel} ${targetClass}.')
    end

    if (targetClass == "Warlock") then
        table.insert(listOfPhrases, 'Uh, bing, bing, bong, bong,get out, demon!')
    end

    if (targetClass == "Priest") then
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
    if(UnitName("target") and UnitPlayerControlled("target")) then
        local playerName, playerGender, playerClass, playerRace, playerLevel  = ExpressYourElf.Helpers.GetPlayerInformation()
        local targetName, targetGender, targetClass, targetRace, targetLevel  = ExpressYourElf.Helpers.GetTargetInformation()

        local playerHisHer = string.lower(ExpressYourElf.Helpers.GetHisHer(playerGender))
        local targetHisHer = string.lower(ExpressYourElf.Helpers.GetHisHer(targetGender))

    local RandomPhrase = ExpressYourElf.RandomPhrases.GetRandomMessage(
        playerName,
        playerGender,
        playerClass,
        playerRace,
        playerLevel,
        playerHisHer,
        targetName,
        targetGender,
        targetClass,
        targetRace,
        targetLevel,
        targetHisHer
    )

        SendChatMessage(RandomPhrase, "SAY", nil, index);
    end
end

