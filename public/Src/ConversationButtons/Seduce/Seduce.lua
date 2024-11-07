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
    playerHimHer,
    targetName,
    targetGender,
    targetClass,
    targetRace,
    targetLevel,
    targetManWoman,
    targetGuyGirl,
    targetPoppaMomma,
    targetHimHer
)
    local randomWorld = ExpressYourElf.Helpers.GetRandomWorld()

    -- common
    local pickedLine
    local flirtLines = {
        'My name is ${playerName} - a ${playerManWoman} of the Universe. A popular ${targetGuyGirl} like you is going to need some wooing.',
        'Just say yes now and I won’t have to spike your drink',
        'You remind me of my uncle, we should get it on!',
        'You could never be ice cream because you`re so hot...and ${targetRace}',
        "I think you're suffering from a lack of vitamin me.",
        "Nice tabard, can I talk you out of it?",
        "You’re pretty. I bet you have a pretty scream...",
        "People call me ${playerName}, but you can call me tonight.",
        "What are you raiding tonight? Well, besides me, of course.",
        "I heard you like bad ${playerGuyGirl}. Well, I’m bad at everything.",
        "You can be my Dungeon Master any night.",
        'Just you, and me, and ${targetName}!',
        'I bet you didn’t feel me lick your ear.',
        'When you look out your window tonight, you might catch a glimpse of me.',
        'The War Within is a great game, but I prefer the war within your pants.',
        'BITTY!!',
        'You look comfortable to sit on',
        'Nice neck you’ve got there',
    }

    if (targetGender == "female") then
        table.insert(flirtLines, "My what a smashing blouse you've got there!");
    end
    -- from
    if (playerClass == "Warlock" or playerClass == "Demon Hunter") then
        table.insert(flirtLines, "I want you all to myself, You’re my fel juice I would like to drink more of.")
    end

    if (playerRace == "Worgen") then
        table.insert(flirtLines, "I'm a werewolf, but I'm not the only one who's going to be howling tonight.");
        table.insert(flirtLines, "Did you know, a worgen always brings ${playerHisHer} pack with ${playerHimHer}?");
    end

    if (playerRace == "Worgen" or playerRace == "Tauren" or playerRace == "Vulpera" or playerRace == "Pandaren" or playerRace == "Highmountain Tauren") then
        table.insert(flirtLines,
            "If being a furry in ${randomWorld} is wrong, You can also keep me as your favourite pet!")
    end

    if (playerRace == "Vulpera") then
        table.insert(flirtLines, "My face is long and shallow, one of my great assets")
    end

    if (playerClass == "Warlock") then
        table.insert(flirtLines, "I would flirt with you, but I’d rather seduce you with my succubus.");
        table.insert(flirtLines,
            "If you click my portal, it will get you sucked through the Celestial Plane right into my room.");
    end

    if (playerClass == "Shaman") then
        table.insert(flirtLines, "If i could learn any new spell, it would be a love totem to entangle you.")
    end

    if (playerClass == "Paladin") then
        table.insert(flirtLines, "Do you feel it? And that just my Devotion Aura.")
        table.insert(flirtLines, "I have plenty protection with me.")
        table.insert(flirtLines, "I sure must be a paladin, because I wanna lay my hands on you.");
    end

    if (playerClass == "Paladin" or playerClass == "Warrior" or playerClass == "Death Knight") then
        table.insert(flirtLines, "Wanna wield a broadsword tonight?")
    end

    if (playerClass == "Priest" or targetClass == "Priest") then
        table.insert(flirtLines, "You taught me a new spell; Power Word: Undress")
    end

    if (playerRace == "Lightforged Draenei" or playerRace == "Draenei") then
        table.insert(flirtLines, "You have dirt on your face. Let me wipe it with my tail.")
    end

    if (playerGender == "male" and (playerClass == "Warrior" or playerClass == "Paladin" or playerClass == "Demon Hunter" or playerClass == "Death Knight" or playerRace == "Mechagnome")) then
        table.insert(flirtLines, "My armor is bending just by looking at you!")
    end

    if (playerClass == "Druid") then
        table.insert(flirtLines, "Did you know I'm a beast?")
    end

    if (playerClass == "Druid" and playerGender == "male") then
        table.insert(flirtLines, "Want to touch my Staff of Rampant Growth?");
        table.insert(flirtLines, "I have something hidden between all this hair.");
    end

    if (targetClass == "Druid" and targetGender == "male") then
        table.insert(flirtLines, "Want to touch your Staff of Rampant Growth");
    end

    if (targetRace == "Goblin") then
        table.insert(flirtLines, "Treat me like a pirate and give me that booty.");
    end

    if (playerRace == "Goblin" and playerGender == "male") then
        table.insert(flirtLines, "I'm no Kobald, but you can take my candle anytime!");
    end

    if ((playerRace == "Goblin" or targetRace == "Goblin") and playerGender == "female" and targetGender == "female") then
        table.insert(flirtLines, "Scissor me timbers!");
    end

    if (playerGender == "male" and targetGender == "male") then
        table.insert(flirtLines, "Do ya wanna grind something else?");
    end

    if (playerRace == "Goblin" or playerRace == "Gnome" or playerRace == "Mechagnome") then
        table.insert(flirtLines,
            "Ride with me away. We doesn't have much time. My legging are tight. So onto my love rocket, climb.");
        table.insert(flirtLines, "If we mixed together, would we go bang, bang!");
    end


    if (playerRace == "Zandalari Troll" or playerRace == "Troll") then
        table.insert(flirtLines, "Don't jinx it and do some crazy voodoo with me.");
    end

    if (playerGender == "female") then
        table.insert(flirtLines,
            "You can eat my skittles. It's the sweetest in the middle. Pink is the flavor. Solve the riddle.")
    end

    if (playerClass == "Mage") then
        table.insert(flirtLines, "Want to see my magic wand?");
        table.insert(flirtLines, "I blast off your clothes with my pyroblast, and freeze you so i can handle you.");
    end

    -- to
    if (targetClass == "Druid") then
        table.insert(flirtLines, "I've heard that you are an Epic mount.");
        table.insert(flirtLines, "Are you in Sea Lion form? Because I can sea you Lion in my bed tonight.");
    end

    if (targetClass == "Mage" and targetGender == "male") then
        table.insert(flirtLines, "I may not be a wizard, but I’m still looking for a new staff.");
    end

    if (targetClass == "Druid" and playerClass == "Hunter") then
        table.insert(flirtLines, "Feeling wild? That's okay. I have a talent in [Handle Animal].");
    end

    if (targetClass == "Priest" and targetGender == "female" and playerGender == "male") then
        table.insert(flirtLines, "You must be Sally Whitemane, because you just made my champion arise!");
    end

    if (targetClass == "Demon Hunter") then
        table.insert(flirtLines, "Would you ever go full fel on me?");
        table.insert(flirtLines, "Have you ever thought of the idea I would be your succubus?");
    end

    if (targetRace == "Demon Hunter" and playerGender == "male") and targetGender == "female" then
        table.insert(flirtLines, "Have you ever thought of the idea I would be fine you being my succubus?");
    end

    if (targetRace == "Night Elf" or targetRace == "Void Elf" or targetRace == "Blood Elf" or targetRace == "Nightborne") then
        table.insert(flirtLines, "No bush is too big for me.");
    end

    if (targetRace == "Vulpera") then
        table.insert(flirtLines, "Foxy ${targetPoppaMomma}, You smell kinda pretty. Wanna smell me? Hoo-hah!");
    end



    if (targetClass == "Rogue") then
        table.insert(flirtLines, "You don’t need [Confusion] to drive me crazy.");
        table.insert(flirtLines, "I hope you built up that energy to have a go at me.");
    end

    if (targetClass == "Warrior") then
        table.insert(flirtLines, "Are you a barbarian? 'Cuz I like your rage.");
    end

    if (targetClass == "Priest") then
        table.insert(flirtLines, "You don’t need [Mind Control] to get me to do things.");
        table.insert(flirtLines, "Do you take confessions? Because I have many to tell about you.");
    end

    if (targetClass == "Priest" or targetClass == "Paladin") then
        table.insert(flirtLines, "Is it hot in here? Or is it the holy spirit burning inside you?");
    end

    if (targetClass == "Warlock") then
        table.insert(flirtLines, "Talk Demonic to me!");
        table.insert(flirtLines, "I don't mind when your imps are looking at us.");
        table.insert(flirtLines, "Why don't you seduce me? My resistance is low.");
    end

    if (targetClass == "Priest" or targetClass == "Paladin" or targetClass == "Monk" or targetClass == "Warlock" or targetClass == "Mage") then
        table.insert(flirtLines, "They say that you have spells of love, so would you mind starting to cast one on me?");
    end

    if (targetClass == "Warrior" or targetClass == "Paladin" or targetClass == "Demon Hunter" or targetClass == "Death Knight") then
        table.insert(flirtLines, "Wanna explore fifty shades of plate with me?");
    end

    if (playerClass == "Rogue" and targetClass == "Rogue") then
        table.insert(flirtLines, "Let us have only leather stand between our love.");
    end

    if (playerRace == "Night Elf" and targetGender == "female") then
        table.insert(flirtLines, "I'm not a night elf, but I'd like to dance on your moonwell.")
    end

    if (playerRace == "Earthen") then
        table.insert(flirtLines,
            "Sticks and bones may won't break my stones, But whips and chains excite me. So tie me down and hurt me, To show me that you like me.")
        if (playerGender == "male") then
            table.insert(flirtLines, "I don't have any bones, but whatever you touch, it'll be rock hard.")
        end
    end


    if (playerRace == "Blood Elf") then
        table.insert(flirtLines, "You and me will corrupt the Sunwell for sure.")
    end

    if (not playerRace == "Blood Elf") then
        table.insert(flirtLines, "I'm not a blood elf, but I can make you bleed.")
    end

    if (targetRace == "Earthen") then
        table.insert(flirtLines, "I will make you scream in both minor and major scales.");
    end

    if (targetRace == "Dracthyr") then
        table.insert(flirtLines, "You have just the right tongue and teeth.");
    end

    if (playerRace == "Dracthyr" and targetRace == "Earthen") then
        table.insert(flirtLines, "I will make you rock in both minor and major scales.");
    end

    -- Oh no, too soon!
    if (playerClass == "Priest" and targetLevel < 18) then
        print('You should wait with flirting until ${targtName} is higher than level 18! ;-)');
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
            playerHimHer = playerHimHer,
            targetName = targetName,
            targetGender = targetGender,
            targetClass = targetClass,
            targetRace = targetRace,
            targetLevel = targetLevel,
            targetManWoman = targetManWoman,
            targetGuyGirl = targetGuyGirl,
            targetPoppaMomma = targetPoppaMomma,
            targetHimHer = targetHimHer,
            oppositeSex = oppositeSex,
            randomWorld = randomWorld

        }
    )
end

function ExpressYourElf.Seduce.run()
    if (UnitName("target") and UnitPlayerControlled("target")) then
        local playerName, playerGender, playerClass, playerRace, playerLevel = ExpressYourElf.Helpers
            .GetPlayerInformation()
        local targetName, targetGender, targetClass, targetRace, targetLevel = ExpressYourElf.Helpers
            .GetTargetInformation()

        local playerGuyGirl                                                  = ExpressYourElf.Helpers.GetGuyGirl(
            playerGender)
        local playerManWoman                                                 = ExpressYourElf.Helpers.GetManWoman(
            playerGender)
        local targetGuyGirl                                                  = ExpressYourElf.Helpers.GetGuyGirl(
            targetGender)
        local targetManWoman                                                 = ExpressYourElf.Helpers.GetManWoman(
            targetGender)
        local targetPoppaMomma                                               = ExpressYourElf.Helpers.GetPoppaMomma(
            targetGender)
        local playerHimHer                                                   = ExpressYourElf.Helpers.GetHimHer(
            playerGender)
        local targetHimHer                                                   = ExpressYourElf.Helpers.GetHimHer(
            targetGender)

        local flirtLine                                                      = ExpressYourElf.Seduce.GetMessage(
            playerName,
            playerGender,
            playerClass,
            playerRace,
            playerLevel,
            playerManWoman,
            playerGuyGirl,
            playerHimHer,
            targetName,
            targetGender,
            targetClass,
            targetRace,
            targetLevel,
            targetManWoman,
            targetGuyGirl,
            targetPoppaMomma,
            targetHimHer
        )

        local emotes                                                         = {
            'FLIRT',
            'KISS',
            'LAYDOWN',
            'LICK',
            'LOVE',
            'MASSAGE',
            'PURR',
            'SEXY',
            'SNIFF',
            'CUDDLE',
            'TEASE',
            'SCRATCH',
            'POUNCE'
        }

        if (flirtLine ~= nil) then
            local randomEmote = emotes[fastrandom(1, #emotes)];

            DoEmote(randomEmote, "");
            SendChatMessage(flirtLine, "SAY", nil, index);
        end
    end
end
