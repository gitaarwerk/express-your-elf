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
    local d = C_DateAndTime.GetCalendarTimeFromEpoch(1e6 * 60 * 60 * 24)
    local splitName = targetName
    local pickedGift
    local listOfGifts = {
        "gives ${targetName} a [Free Pen] with engravings: '${playerName} <3 ${targetName}'.",
        'appreciates ${targetName} with a [Mars].',
        'folds an [Orgimai Bird] for ${targetName}, how original!',
        'hands over a [Vial of luminol spray] to ${targetName}. Super handy, right?!',
        "passes ${targetName} an [Autographed picture of Gul'Dan riding a Pony]. Now this is awkward!",
        "gives a [Photoalbum] of pictures from ${playerName} and ${targetName}'s on it. How nice!",
        "gives a [Book 'Crafting with Uther's remains'] to ${targetName}. Now that's a creative gift!",
        "gives a [Bag of Earthworm Jerky'] to ${targetName}. Crunchy, yet sweet!",
        "gives a [Box of chocolates] to ${targetName}. How sweet!",
        "passes on [Uranium ore] to ${targetName}. It was getting too hot in my pants anyways.",
        "gives a set of [Elf ear shaped earbuds] to ${targetName}. Now that's listening in style!",
        "gives a [Home Genetic Engineering Kit] to ${targetName}. How interesting!",
        "hands ${targetName} a handwritten card with a personal message on it, saying: 'Thanks for all the nuts, Balboa'. Wait a minute!, who is this BALBOA!?",
        "pulls a [Puppy] out of ${playerHisHer} pocket. Here, he never really liked me anyways!",
        "gives a gift-wrapped [Tauren] to ${targetName}. How could've this Tauren be breathing in THERE! Wow!",
        "gives a [Custom voodoo doll of Thrall] to ${targetName}. So you can finally get that windfury totem you've always wanted!",
        "gives a [Snail Secretion Facial Mask] to ${targetName}. It's less slimey as it looks. REALLY!",
        "gives a [Bycicle pizza-cutter] to ${targetName}. Everyone needs one of those!",
        "gives a handy [Centaur Finger Puppet] to ${targetName}. You never know when they come in handy!",
        "gives a set of [Finger Tentacles] to ${targetName}. It's not just Pandaren who uses them.",
        "gives an [Ant Filled Watch] to ${targetName}. They are so much more reliable than those sun dials found in Uldum.",
        "gives an [Staff with built in uranial] to ${targetName}. So handy during raiding!",
        "gives an [Arthas' Adult coloring book] to ${targetName}.",
        "gives a [Remote Controlled Crocodile Head] to ${targetName}.",
        "gifts a plunger to ${targetName}. Look at that handle! WOW, it's a hand carved head that is an exact copy of YOUR HEAD!",
        "gifts a notebook to ${targetName}. It's called: 'The origional memoires of Sylvanas, love, death and decomposition.'",
        "passes a present to ${targetName}. Something useful for you: Best storebought meals for one!",
        "gives a [Skeleton Hand Jewelry Organizer] to ${targetName}. It looks almost like Kel'Thuzad's hand!",
        "gives a [Customizable Branding Stick] to ${targetName}. Handy for marking your crafts,... and raid members",
        "gives a [The Serial Killer Cookbook] to ${targetName}. I realised this is THE PERFECT present for you!",
        "gives a book called: [Cursed Objects: Strange but True Stories of the World's Most Infamous Items] to ${targetName}. WOW! What a gem!",
        "gives a [Vintage Print of a Smoking kid Archimonde & a Giant Chicken] to ${targetName}. Now here's a great memory! Right!?",
        "gives a set of [Handmade Experimented on Human Anatomy Coasters] to ${targetName}. They said, it belonged to Professor Putricide.",
        "gives a Titanic umbilical cord to ${targetName}. Would animals have been created using this thing?",
        "hands over a collection of Polaroids of Anduin being tortured by the Jailer to ${targetName}",
        "gives a pillow of cut off hand trophy to ${targetName}.",
        "passes a “How to traumatise your guild mates”-book to ${targetName}.",
        "unwraps a present from ${targetName}: Oh,..a gas-proof face mask from Ice-crown citadel of Dr Putrice. The note sas: 'Don’t smell it'.",
        "gives a par of Tauren Paw socks to ${targetName}.",
        "hands over a duty tome to ${targetName} with the title: “The first ones Research-kit”.",
        "passes an Ouija board to ${targetName} with the only letters spelling: “W-I-N-K-W-I-N-K”, creepy, or just really C-O-O-L?",
        "receives a bronze cast of ${targetName}’s sleeping body.",
        "gives a pair of guillotine ear-rings to ${targetName}.",
        "gives a hand-knit brain beanie.",
    }

    if (playerClass == "Goblin") then
        table.insert(listOfGifts, "gives a set of [Goblin Rocket Boots] to ${targetName}.")
        table.insert(listOfGifts, "gives a [Goblin Rocket Helmet] to ${targetName}.")
        table.insert(listOfGifts, "gives a [Goblin Rocket Launcher] to ${targetName}.")
    end

    if (playerClass == "Druid" or playerRace == "Worgen" or playerRace == "Gilnean" or playerRace == "Tauren" or playerRace == "Vulpera" or playerRace == "Pandaren" or playerRace == "Highmountain Tauren") then
        table.insert(listOfGifts,
            "gives ${playerName}'s paw to ${targetName}. Don’t worry, it was cut off a while ago. It no longer bleeds.")
        table.insert(listOfGifts, "gives ${targetName} A small bag of fur.My first shedding")
    end

    if (playerClass == "Druid") then
        table.insert(listOfGifts, "gives ${targetName} a set of bacon flavoured-bandages. It’s made from.... Bear-me.")
    end

    if (playerRace == "Troll") then
        table.insert(listOfGifts,
            "hands over ${targetName} a cut off hand from a random bystander, good for in the soup. Magical taste guaranteed")
    end

    if (targetClass == "Hunter") then
        table.insert(listOfGifts, "hands over a set of neck ties for ${targetName}'s pets.")
    end

    if (playerRace == "Death Knight") then
        table.insert(listOfGifts, "hands over ${targetName} a carved steak of decaying flesh, ew!")
    end

    --christmas
    if ((d.month == 12 and d.day == 24) or (d.month == 12 and d.day == 25)) then
        table.insert(listOfGifts,
            "hands over a [Christmas sweater] to ${targetName}. It's a little itchy, but it's the thought that counts!");
    end

    -- eastern
    if ((d.month == 4 and d.day == 4) or (d.month == 4 and d.day == 5)) then
        table.insert(listOfGifts,
            "gives a [Chocolate Easter Bunny] to ${targetName}. It's a little melted, but it's the thought that counts!");
    end

    -- halloween
    if ((d.month == 10 and d.day == 30) or (d.month == 10 and d.day == 31)) then
        table.insert(listOfGifts,
            "gives a [Pumpkin] to ${targetName}. It's a little rotten, but it's the thought that counts!");
    end

    -- valentine
    if ((d.month == 2 and d.day == 13) or (d.month == 2 and d.day == 14)) then
        table.insert(listOfGifts,
            "gives a [Heart-shaped box of chocolates] to ${targetName}. It's a little melted, but it's the thought that counts!");
    end


    pickedGift = listOfGifts[fastrandom(1, #listOfGifts)]

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
            targetHisHer = targetHisHer,
            splitName = splitName,
        }
    )
end

function ExpressYourElf.GivePresent.run()
    if (UnitName("target")) then
        local playerName, playerGender, playerClass, playerRace, playerLevel = ExpressYourElf.Helpers
            .GetPlayerInformation()
        local targetName, targetGender, targetClass, targetRace, targetLevel = ExpressYourElf.Helpers
            .GetTargetInformation()

        local playerHisHer                                                   = string.lower(ExpressYourElf.Helpers
            .GetHisHer(playerGender))
        local targetHisHer                                                   = string.lower(ExpressYourElf.Helpers
            .GetHisHer(targetGender))

        local RandomGift                                                     = ExpressYourElf.GivePresent.GetRandomGift(
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
