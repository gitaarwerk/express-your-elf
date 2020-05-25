-- init

ExpressYourElf.Flirt = {}

function ExpressYourElf.Flirt.GetRandomPrefix()
    local prefix = {
        '${targetName}, ',
        'Hey ${targetName} ',
        'Hey there ${targetName}! ',
        'Hey ${targetName} baby! ',
        '${targetName}, baby, ',
        '${targetName}, honey, ',
        'Hi ${targetName}, ',
    }

    return prefix[math.random(1, #prefix)]
end

function ExpressYourElf.Flirt.GetMessage(
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
    -- common
    local pickedLine
    local flirtLines = {
        'Can I set my Heartstone at your place tonight?',
        'Was your father a rogue? ‘Cause someone stole the stars from the sky and put them in your eyes.',
        'Anybody ever tell you I have beautiful eyes?',
        'My name is ${playerName} - a ${playerManWoman} of the Universe. A popular ${targetGuyGirl} like you is going to need some wooing.',
        'Enough about you, let`s talk about me, ${playerName}.',
        'I seem to have lost my Heartstone. Can I have yours?',
        'They say the Darkmoon Faire is the happiest place on earth. Well apparently, no one has ever been standing next to you.',
        'I’m not a blacksmith, but I can melt me and you together.',
        'Is there an Flight master nearby or is it my heart taking off?',
        'Do you play Heartstone? I can show you my deck.',
        'That tabard looks great on you… as a matter of fact, so would I.',
        'You’re so hot, you make the Tanaris look like the Northrend.',
        'I must be in Medivh`s tower, because you are truly magical!'
    }

    -- from
    if (playerRace == "Worgen" or playerRace == "Tauren" or playerRace == "Vulpera" or playerRace == "Pandaren" or playerRace == "HighmountainTauren") then
        table.insert(flirtLines, "Wanna see me comb my hair, really fast?")
        table.insert(flirtLines, "My name isn’t Elmo, but you can tickle me any time you want to.")
        table.insert(flirtLines, "If being a furry in Azeroth is wrong, You can also keep me as your favourite pet!")
    end

    if (playerClass == "Hunter") then
        table.insert(flirtLines, "I tracked your Heartstone back to me.")
    end

    if (playerRace == "Void Elf" or playerClass == "Warlock") then
        table.insert(flirtLines, "If the void is eternal, will you be my void?")
    end

    if (playerClass == "Rogue") then
        table.insert(flirtLines, "I’m here to steal your Heartstone.")
    end

    if (playerClass == "Shaman") then
        table.insert(flirtLines, "If i could learn any new spell, it would be a love totem to entangle you.")
    end

    if (playerClass == "Paladin") then
        table.insert(flirtLines, "${targetGuyGirl}, I have the blessing of protection!")
        table.insert(flirtLines, "Do you feel it? And that just my Devotion Aura.")
    end

    if (playerRace == "Lightforged Draenei" or playerClass == "Paladin" or playerClass == "Priest") then
        table.insert(flirtLines, "You're my light in the darkness.")
    end

    if (playerGender == "male" and (playerClass == "Warrior" or playerClass == "Paladin" or playerClass == "Demon Hunter" or playerClass == "Death Knight" or playerRace == "Mechagnome")) then
        table.insert(flirtLines, "My armor is bending bending just by looking at you!")
    end

    if (playerClass == "Death Knight" or playerRace == "Mechagnome") then
        table.insert(flirtLines, "Let's be ${playerManWoman} and ${targetManWoman} until decay makes us fall apart.")
    end

    if (playerClass == "Druid") then
        table.insert(flirtLines, "Did you ever had the chance to hug a tree without feeling you are the only one?, now is your chance!")
        table.insert(flirtLines, "Did you know I'm a beast?")
        table.insert(flirtLines, "Forget that rogue. As a Druid, I've got the strength AND the agility.")
    end

    if (playerClass == "Druid" and playerGender == "male") then
        table.insert(flirtLines, "Want to touch my Staff of Rampant Growth?")
    end

    if (playerRace == "Goblin") then
        table.insert(flirtLines, "Treat me like a pirate and give me that booty.")
        table.insert(flirtLines, "I don't care if you are a gold digger.")
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
        table.insert(flirtLines, "Ride with me away. We doesn't have much time. My leggins are tight. So onto my love rocket, climb.")
        table.insert(flirtLines, "Fly away in my space rocket. You no need put money in my pocket.")
    end


    if (playerRace == "Zandalari Troll" or playerRace == "Troll") then
        table.insert(flirtLines, "Don't jinx it and do some voodoo with me.")
    end


    -- to
    if (targetClass == "Druid") then
        table.insert(flirtLines, "I've heard that you are an Epic mount.")
        table.insert(flirtLines, "Are you in sea lion form? Because I can sea you lion in my bed tonight.")
    end

    if (targetClass == "Priest" and targetGender == "female" and playerGender == "male") then
        table.insert(flirtLines, "You must be Sally Whitemane, because you just made my champion arise!")
    end

    if (targetRace == "Void Elf" or targetRace == "Blood Elf" or targetRace == "Nightborne") then
        table.insert(flirtLines, "Your leafy long ears remind of the trees at my mother's home")
    end


    if (targetRace == "Vulpera") then
        table.insert(flirtLines, "Foxy ${targetPoppaMomma}, You smell kinda pretty. Wanna smell me? Hoo-hah!")
    end

    if (targetRace == "Draenei" and targetRace == "Lightforged Draenei") then
        table.insert(flirtLines, "Was you father an Draenei? Because there’s nothing else like you on Azeroth!")
    end

    if (targetClass == "Rogue") then
        table.insert(flirtLines, "You don’t need [Confusion] to drive me crazy.")
    end

    if (targetClass == "Hunter") then
        table.insert(flirtLines, "Your arrow hit my heart.")
    end

    if (targetClass == "Priest") then
        table.insert(flirtLines, "You don’t need [Mind Control] to get me to do things.")
        table.insert(flirtLines, "Do you take confessions? Because I have many to tell about you.")
    end

    if (targetClass == "Warlock") then
        table.insert(flirtLines, "Talk Demonic to me!")
        table.insert(flirtLines, "I don't mind when your imps are looking at us.")
        table.insert(flirtLines, "Why don't you seduce me? My resistance is low.")
    end

    if (targetClass == "Priest" and targetClass == "Paladin" and targetClass == "Monk" and targetClass == "Warlock" and targetClass == "Mage") then
        table.insert(flirtLines, "They say that you have spells of love, so would you mind starting to cast one on me?")
        table.insert(flirtLines, "Did you have buffs for breakfast? Because you look magically delicious!")
    end

    if (targetRace == "Scourge") then
        table.insert(flirtLines, "Do you have a shovel? Because I’m digging you.")
    end

    if (targetClass == "Warrior" or targetClass == "Paladin" or targetClass == "Demon Hunter" or targetClass == "Death Knight") then
        table.insert(flirtLines, "Wanna explore fifty shades of plate with me?")
    end

    if (playerClass == "Rogue" and targetClass == "Rogue") then
        table.insert(flirtLines, "Let us let only leather stand between our love.")
    end

    if (playerClass == "Paladin" and targetClass == "Paladin") then
        table.insert(flirtLines, "I can swing my hammer and you read your divine libram.")
    end


-- Oh no, too soon!
    if (playerClass == "Priest" and targetLevel < 18) then
        print('You should wait with flirting until ${targtName} is higher than level 18.')
        return nil
    end

    -- randomize result
    pickedLine = flirtLines[math.random(1, #flirtLines)]

    return ExpressYourElf.Helpers.parseText(
        ExpressYourElf.Flirt.GetRandomPrefix() .. pickedLine,
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
            targetPoppaMomma = targetPoppaMomma
        }
    )
end


function ExpressYourElf.Flirt.run()
    if(UnitName("target") and UnitPlayerControlled("target")) then
        local playerName, playerGender, playerClass, playerRace, playerLevel  = ExpressYourElf.Helpers.GetPlayerInformation()
        local targetName, targetGender, targetClass, targetRace, targetLevel  = ExpressYourElf.Helpers.GetTargetInformation()

        local playerGuyGirl = ExpressYourElf.Helpers.GetGuyGirl(playerGender)
        local playerManWoman = ExpressYourElf.Helpers.GetManWoman(playerGender)
        local targetGuyGirl = ExpressYourElf.Helpers.GetGuyGirl(targetGender)
        local targetManWoman = ExpressYourElf.Helpers.GetManWoman(targetGender)
        local targetPoppaMomma = ExpressYourElf.Helpers.GetPoppaMomma(targetGender)

        local flirtLine = ExpressYourElf.Flirt.GetMessage(
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

        if (flirtLine ~= nil) then
            DoEmote("FLIRT", "");
            SendChatMessage(flirtLine, "SAY", nil, index);
        end
    end
end
