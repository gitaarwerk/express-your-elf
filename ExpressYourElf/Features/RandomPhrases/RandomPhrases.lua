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
    local listOfPhrases = {}

    if (targetLevel < 50) then
        table.insert(listOfPhrases, 'I steal yo soul and cast Lightning Lvl. 1,000,000 Your body explodes into a fine bloody mist, because you are only a Lvl. ${targetLevel} ${targetClass}.')
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

print('random loadded')