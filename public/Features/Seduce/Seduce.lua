-- init

ExpressYourElf.Seduce = {}

function ExpressYourElf.Seduce.GetRandomPrefix()
    local prefix = {
        '${targetName}, ',
        'Hey ${targetName}. ',
        'Hey there ${targetName}! ',
        'Hey ${targetName}, baby! ',
        '${targetName}, baby, ',
        '${targetName}, honey, ',
        'Hi ${targetName}, ',
    }

    return prefix[fastrandom(1, #prefix)]
end

function ExpressYourElf.Seduce.GetMessage(
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
    local randomWorld = ExpressYourElf.RandomPhrases.GetRandomWorld()

    local playerSex = "girls"

    if (playerGender == "male") then
        oppositeSex = "guys"
    end
    -- common
    local pickedLine
    local flirtLines = {
        'My name is ${playerName} - a ${playerManWoman} of the Universe. A popular ${targetGuyGirl} like you is going to need some wooing.',
        'Just say yes now and I won’t have to spike your drink',
        'You remind me of my uncle, we should get it on!',
        'You could never be ice cream because you`re so hot...and ${playerRace}',
        "I think you're suffering from a lack of vitamin me.",
        "Nice tabard, can I talk you out of it?",
        "People call me ${playerName}, but you can call me tonight.",
        "What are you raiding tonight? Well, besides me, of course.",
        "I heard you like bad ${oppositeSex}. Well, I’m bad at everything."
    }
    
    -- from
    if (playerRace == "Worgen" or playerRace == "Tauren" or playerRace == "Vulpera" or playerRace == "Pandaren" or playerRace == "HighmountainTauren") then
        table.insert(flirtLines, "If being a furry in ${randomWorld} is wrong, You can also keep me as your favourite pet!")
    end

    if (playerClass == "Warlock") then
        table.insert(flirtLines, "I would flirt with you, but I’d rather seduce you with my succubus.")
    end

    if (playerClass == "Shaman") then
        table.insert(flirtLines, "If i could learn any new spell, it would be a love totem to entangle you.")
    end

    if (playerClass == "Paladin") then
        table.insert(flirtLines, "Do you feel it? And that just my Devotion Aura.")
    end

    if (playerClass == "Priest") then
        table.insert(flirtLines, "You taught me a new spell; Power Word: Undress")
    end

    if (playerRace == "Lightforged Draenei" or playerRace == "Draenei") then
        table.insert(flirtLines, "You have dirt on your face. Let me wipe it with my tail.")
    end

    if (playerGender == "male" and (playerClass == "Warrior" or playerClass == "Paladin" or playerClass == "Demon Hunter" or playerClass == "Death Knight" or playerRace == "Mechagnome")) then
        table.insert(flirtLines, "My armor is bending bending just by looking at you!")
    end

    if (playerClass == "Druid") then
        table.insert(flirtLines, "Did you know I'm a beast?") 
    end

    if (playerClass == "Druid" and playerGender == "male") then
        table.insert(flirtLines, "Want to touch my Staff of Rampant Growth?")
    end

    if (targetClass == "Druid" and targetGender == "male") then
        table.insert(flirtLines, "Want to touch your Staff of Rampant Growth")
    end

    if (targetRace == "Goblin") then
        table.insert(flirtLines, "Treat me like a pirate and give me that booty.")
    end

    if (playerRace == "Goblin" and playerGender == "male") then
        table.insert(flirtLines, "I'm no Kobald, but you can take my candle anytime!")
    end

    if ((playerRace == "Goblin" or targetRace == "Goblin") and playerGender == "female" and targetGender == "female") then
        table.insert(flirtLines, "Scissor me timbers!")
    end

    if (playerGender == "male" and targetGender == "male") then
        table.insert(flirtLines, "Do ya wanna grind something else?")
    end

    if (playerRace == "Goblin" or playerRace == "Gnome" or playerRace == "Mechagnome") then
        table.insert(flirtLines, "Ride with me away. We doesn't have much time. My legging are tight. So onto my love rocket, climb.")
    end


    if (playerRace == "Zandalari Troll" or playerRace == "Troll") then
        table.insert(flirtLines, "Don't jinx it and do some crazy voodoo with me.")
    end

    if (playerGender == "female") then 
        table.insert(flirtLines, "You can eat my skittles. It's the sweetest in the middle. Pink is the flavor. Solve the riddle.")
    end 

    -- to
    if (targetClass == "Druid") then
        table.insert(flirtLines, "I've heard that you are an Epic mount.")
        table.insert(flirtLines, "Are you in Sea Lion form? Because I can sea you Lion in my bed tonight.")
    end

    if (targetClass == "Priest" and targetGender == "female" and playerGender == "male") then
        table.insert(flirtLines, "You must be Sally Whitemane, because you just made my champion arise!")
    end

    if (targetClass == "Demon Hunter") then
        table.insert(flirtLines, "Would you ever go full fel on me?")
        table.insert(flirtLines, "Have you ever thought of the idea I would be your succubus?")
    end

    if (targetRace == "Demon Hunter" and playerGender == "male") and targetGender =="female" then
        table.insert(flirtLines, "Have you ever thought of the idea I would be fine you being my succubus?")
    end

    if (targetRace == "Night Elf" or targetRace == "Void Elf" or targetRace == "Blood Elf" or targetRace == "Nightborne") then
        table.insert(flirtLines, "No bush is too big for me.")
    end

    if (targetRace == "Vulpera") then
        table.insert(flirtLines, "Foxy ${targetPoppaMomma}, You smell kinda pretty. Wanna smell me? Hoo-hah!")
    end

    if (targetClass == "Rogue") then
        table.insert(flirtLines, "You don’t need [Confusion] to drive me crazy.")
    end


    if (targetClass == "Priest") then
        table.insert(flirtLines, "You don’t need [Mind Control] to get me to do things.")
        table.insert(flirtLines, "Do you take confessions? Because I have many to tell about you.")
    end

    if (targetClass == "Priest" or targetClass == "Paladin") then
        table.insert(flirtLines, "Is it hot in here? Or is it the holy spirit burning inside you?")
    end

    if (targetClass == "Warlock") then
        table.insert(flirtLines, "Talk Demonic to me!")
        table.insert(flirtLines, "I don't mind when your imps are looking at us.")
        table.insert(flirtLines, "Why don't you seduce me? My resistance is low.")
    end

    if (targetClass == "Priest" or targetClass == "Paladin" or targetClass == "Monk" or targetClass == "Warlock" or targetClass == "Mage") then
        table.insert(flirtLines, "They say that you have spells of love, so would you mind starting to cast one on me?")
    end

    if (targetClass == "Warrior" or targetClass == "Paladin" or targetClass == "Demon Hunter" or targetClass == "Death Knight") then
        table.insert(flirtLines, "Wanna explore fifty shades of plate with me?")
    end

    if (playerClass == "Rogue" and targetClass == "Rogue") then
        table.insert(flirtLines, "Let us have only leather stand between our love.")
    end


    -- Oh no, too soon!
    if (playerClass == "Priest" and targetLevel < 18) then
        print('You should wait with flirting until ${targtName} is higher than level 18.')
        return nil
    end

    -- randomize result
    pickedLine = flirtLines[fastrandom(1, #flirtLines)]

    return ExpressYourElf.Helpers.parseText(
        ExpressYourElf.Seduce.GetRandomPrefix() .. pickedLine,
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
            randomWorld = randomWorld
        }
    )
end


function ExpressYourElf.Seduce.run()
    if(UnitName("target") and UnitPlayerControlled("target")) then
        local playerName, playerGender, playerClass, playerRace, playerLevel  = ExpressYourElf.Helpers.GetPlayerInformation()
        local targetName, targetGender, targetClass, targetRace, targetLevel  = ExpressYourElf.Helpers.GetTargetInformation()

        local playerGuyGirl = ExpressYourElf.Helpers.GetGuyGirl(playerGender)
        local playerManWoman = ExpressYourElf.Helpers.GetManWoman(playerGender)
        local targetGuyGirl = ExpressYourElf.Helpers.GetGuyGirl(targetGender)
        local targetManWoman = ExpressYourElf.Helpers.GetManWoman(targetGender)
        local targetPoppaMomma = ExpressYourElf.Helpers.GetPoppaMomma(targetGender)

        local flirtLine = ExpressYourElf.Seduce.GetMessage(
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
            'FLIRT',
            'KISS',
            'DROOL',
            'MOAN',
            'LAYDOWN',
            'LICK',
            'LOVE',
            'MASSAGE',
            'POUNCE',
            'PURR',
            'SEXY',
            'SNIFF',
            'CUDDLE',
            'TEASE',
        }

        if (flirtLine ~= nil) then
            local randomEmote = emotes[fastrandom(1, #emotes)];

            DoEmote(randomEmote, "");            
            SendChatMessage(flirtLine, "SAY", nil, index);
        end
    end
end
