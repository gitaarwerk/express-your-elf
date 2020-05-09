-- init
ExpressYourElf.GivePresent = {}

function ExpressYourElf.GivePresent.GetRandomGift(
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
    local pickedGift
    local listOfGifts = {
        "gives ${targetName} a [Free Pen] with engravings: '${playerName} <3 ${targetName}'.",
        'appreciates ${targetName} with a [Mars].',
        'folds an [Orgimai Bird] for ${targetName}, how original!',
        "passes ${targetName} an [Autographed picture of Gul'Dan riding a Pony]. Now this is awkward!",
        "gives a [Photoalbum] of pictures from ${playerName} and ${targetName}'s on it. How nice!",
        "gives a [Box of chocolates] to ${targetName}. How sweet!",
        "hands ${targetName} a handwritten card with a personal message on it, saying: 'Thanks for the nuts, Balboa'. Wait a minute!, who is this BALBOA!?",
        "pulls a [Puppy] out of ${playerHisHer} pocket. Here, he never really liked me anyways!",
        "gives a gift-wrapped [Tauren] to ${targetName}. How could've this Tauren be breathing in THERE! Wow!",
        "gives a [Snail Secretion Facial Mask] to ${targetName}. It's less slimey as it looks. REALLY!",
        "gives a [Bycicle pizza-cutter] to ${targetName}. Everyone needs one of those!",
        "gives a handy [Centaur Finger Puppet] to ${targetName}. You never know when they come in handy!",
        "gives a set of [Finger Tentacles] to ${targetName}. It's not just Pandaren who uses them.",
        "gives an [Ant Filled Watch] to ${targetName}. They are so much more reliable than those sun dials found in Uldum."
    }

    pickedGift = listOfGifts[math.random(1, #listOfGifts)]

    return ExpressYourElf.Helpers.parseText(
        pickedGift,
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


function ExpressYourElf.GivePresent.run()
    if(UnitName("target") and UnitPlayerControlled("target")) then
        local playerName, playerGender, playerClass, playerRace, playerLevel  = ExpressYourElf.Helpers.GetPlayerInformation()
        local targetName, targetGender, targetClass, targetRace, targetLevel  = ExpressYourElf.Helpers.GetTargetInformation()

        local playerHisHer = string.lower(ExpressYourElf.Helpers.GetHisHer(playerGender))
        local targetHisHer = string.lower(ExpressYourElf.Helpers.GetHisHer(targetGender))

        local RandomGift = ExpressYourElf.GivePresent.GetRandomGift(
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


        SendChatMessage(RandomGift, "EMOTE", nil, index);
    end
end

print('present loadded')