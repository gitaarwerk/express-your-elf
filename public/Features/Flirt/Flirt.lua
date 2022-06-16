-- init

ExpressYourElf.Flirt = {}

function ExpressYourElf.Flirt.GetRandomPrefix()
    local prefix = {
        '${targetName}, ',
        'Hey ${targetName}. ',
        'Hey there ${targetName}! ',
        'Hey ${targetName}, baby! ',
        '${targetName}, baby, ',
        '${targetName}, honey, ',
        'Hi ${targetName}, ',
    };

    return prefix[fastrandom(1, #prefix)];
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
    local randomWorld = ExpressYourElf.RandomPhrases.GetRandomWorld()

    local playerSex = "girls"

    if (playerGender == "male") then
        oppositeSex = "guys"
    end
    -- common
    local pickedLine

    local flirtLines = {
        'Can I set my Heartstone at your place tonight?',
        'Was your father a rogue? ‘Cause someone stole the stars from the sky and put them in your eyes.',
        'Anybody ever tell you I have beautiful eyes?',
        'Hi ${playerName}, the voices in my head told me to come over and talk to you.',
        'My name is ${playerName} - a ${playerManWoman} of the Universe. A popular ${targetGuyGirl} like you is going to need some wooing.',
        'Enough about you, let’s talk about me, ${playerName}.',
        'I seem to have lost my Heartstone. Can I have yours?',
        'They say the Darkmoon Faire is the happiest place on earth. Well apparently, no one has ever been standing next to you.',
        'I’m not a blacksmith, but I can melt me and you together.',
        'Is there an Flight master nearby or is it my heart taking off?',
        'Do you play Heartstone? I can show you my deck.',
        'That tabard looks great on you… as a matter of fact, so would I.',
        'You’re so hot, you make the Northrend look like Tanaris.',
        'I must be in Medivh`s tower, because you are truly magical!',
        'Your voice melt chocolates.',
        'You’re so hot, my armor melts',
        'When you look out your window tonight, you might catch a glimpse of me.',
        'You look just like my sister… who died under mysterious circumstances.',
        'I bet you didn’t feel me lick your ear.',
        'I would give myself an A+',
        'Say baby. You`re pretty, I`m pretty, what say we go back to my place and stare at each other for a while.',
        'If loving me is wrong, you don`t wanna be right!',
        'How much does a Titan weigh? Enough to break the ice.',
        'You could never be ice cream because you`re so hot...and ${playerRace}',
        "Did you fart? 'Cause you just blew me away.",
        "I like you so much, I want to hug your internal organs.",
        "I think you're suffering from a lack of vitamin me.",
        "People call me ${playerName}, but you can call me tonight.",
        "I may not be the best looking ${playerGuyGirl} here. But I’m he only one talking to you.",
        "If I said I want your armor, would you hold it against me?",
    }
    
    -- from
    if (playerRace == "Worgen" or playerRace == "Tauren" or playerRace == "Vulpera" or playerRace == "Pandaren" or playerRace == "Highmountain Tauren") then
        table.insert(flirtLines, "Wanna see me comb my hair, really fast?")
        table.insert(flirtLines, "My name isn’t Elmo, but you can tickle me any time you want to.")
    end

    if (playerRace == "Scourge" or playerRace == "Undead" or playerClass == "Death Knight" ) then
        table.insert(flirtLines, "You have lovely skin. I can’t wait to wear it.")
        table.insert(flirtLines, "The last time I saw a body like yours, I was burying it in my basement.")
    end

    if (playerClass == "Hunter") then
        table.insert(flirtLines, "I tracked your Heartstone back to me.")
        table.insert(flirtLines, "I'm great with a comb. Wanna watch me comb my hair really fast?'.")
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

    if (playerClass == "Priest") then
        table.insert(flirtLines, "You taught me a new spell; Power Word: Love")
    end

    if (playerRace == "Lightforged Draenei" or playerClass == "Paladin" or playerClass == "Priest") then
        table.insert(flirtLines, "You're my light in the darkness.")
    end

    if (playerGender == "male" and (playerClass == "Warrior" or playerClass == "Paladin" or playerClass == "Demon Hunter" or playerClass == "Death Knight" or playerRace == "Mechagnome")) then
        table.insert(flirtLines, "My armor is bending bending just by looking at you!")
    end

    if (playerRace == "Mechagnome") then
        table.insert(flirtLines, "You know, I have over 200 Bionicles.")
    end

    if (playerClass == "Death Knight" or playerRace == "Mechagnome") then
        table.insert(flirtLines, "Let's be ${playerManWoman} and ${targetManWoman} until decay makes us fall apart.")
    end

    if (playerClass == "Druid") then
        table.insert(flirtLines, "Did you ever had the chance to hug a tree without feeling you are the only one?, now is your chance!")
        table.insert(flirtLines, "Forget that rogue. As a Druid, I've got the strength AND the agility.")
        table.insert(flirtLines, "I'll always be your beast of burden.")        
    end

    if (targetRace == "Goblin") then
        table.insert(flirtLines, "I don't care if you are a gold digger.")
    end

    if (playerRace == "Goblin" and playerGender == "male") then
        table.insert(flirtLines, "I'm no Kobald, but you can take my candle anytime!")
    end

    if (playerRace == "Goblin" or playerRace == "Gnome" or playerRace == "Mechagnome") then
        table.insert(flirtLines, "Fly away in my space rocket. You no need put money in my pocket.")
    end


    if (playerRace == "Zandalari Troll" or playerRace == "Troll") then
        table.insert(flirtLines, "Don't jinx it and do some voodoo with me.")
    end

    if (playerGender == "female") then 
        table.insert(flirtLines, "You can eat my skittles. It's the sweetest in the middle. Pink is the flavor. Solve the riddle.")
    end 


    -- to
    if (targetClass == "Druid") then
        table.insert(flirtLines, "I seem to have lost my teddy bear. Would you like to be my teddy bear tonight?")
    end

    if (targetClass == "Demon Hunter") then
        table.insert(flirtLines, "For you, I AM prepared")
        table.insert(flirtLines, "Aren't you a handsome devil.")
        table.insert(flirtLines, "No need to be green with envy, because I'm all yours.")
        table.insert(flirtLines, "Demonic power or not, I was already obsessed by you!")
    end

    if (targetRace == "Night Elf" or targetRace == "Void Elf" or targetRace == "Blood Elf" or targetRace == "Nightborne") then
        table.insert(flirtLines, "Your leafy long ears remind of the trees at my mother's home")
        table.insert(flirtLines, "I really like your eyebrows")
    end


    if (targetRace == "Vulpera") then
        table.insert(flirtLines, "Foxy ${targetPoppaMomma}, You smell kinda pretty. Wanna smell me? Hoo-hah!")
    end

    if (targetRace == "Draenei" and targetRace == "Lightforged Draenei") then
        table.insert(flirtLines, "Was you father an Draenei? Because there’s nothing else like you on Azeroth!")
    end

    if (targetClass == "Hunter") then
        table.insert(flirtLines, "Your arrow hit my heart.")
    end

    if (targetClass == "Warlock") then
        table.insert(flirtLines, "Talk Demonic to me!")
    end

    if (targetClass == "Priest" or targetClass == "Paladin" or targetClass == "Monk" or targetClass == "Warlock" or targetClass == "Mage") then
        table.insert(flirtLines, "They say that you have spells of love, so would you mind starting to cast one on me?")
        table.insert(flirtLines, "Did you have buffs for breakfast? Because you look magically delicious!")
    end

    if (targetRace == "Scourge" or targetRace == "Undead") then
        table.insert(flirtLines, "Do you have a shovel? Because I’m digging you.")
        table.insert(flirtLines, "Take me out tonight. Where there's music and there's people, and they're young and undead.")
        table.insert(flirtLines, "I can’t think of anyone else I’d rather survive a Zombie Apocalypse with.")
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
    pickedLine = flirtLines[fastrandom(1, #flirtLines)]

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
            targetPoppaMomma = targetPoppaMomma,
            oppositeSex = oppositeSex,
            randomWorld = randomWorld,
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

        local emotes = {
            'FLIRT',
            'WINK',
            'KISS',
            'BLUSH',
            'BLINK',
            'LOVE',
            'PURR',
            'SEXY',
            'SHY',
            'SMIRK',
            'STARE',
        }

        if (flirtLine ~= nil) then
            local randomEmote = emotes[fastrandom(1, #emotes)]

            DoEmote(randomEmote, "")       
            SendChatMessage(flirtLine, "SAY", nil, index)
        end
    end
end
