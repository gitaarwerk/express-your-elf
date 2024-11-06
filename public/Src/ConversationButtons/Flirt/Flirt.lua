-- init

ExpressYourElf.Flirt = {}

function ExpressYourElf.Flirt.GetRandomPrefix(targetRace)
    local prefix = {
        '${targetName}, ',
        'Hey ${targetName}. ',
        'Hey there ${targetName}! ',
        'Hey ${targetName}, baby! ',
        '${targetName}, baby, ',
        '${targetName}, honey, ',
        'Hi ${targetName}, ',
    };

    if (targetRace == "Dracthyr") then
        table.insert(prefix, "Hey there ${targetName}, you hot wings, ");
    end

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
    local randomWorld = ExpressYourElf.Helpers.GetRandomWorld()

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
        "Are you a bank loan? Because you've got my interest, and I'm not sure if I can afford you.",
        'I seem to have lost my Heartstone. Can I have yours?',
        'They say the Darkmoon Faire is the happiest place on earth. Well apparently, no one has ever been standing next to you.',
        'I’m not a blacksmith, but I can melt me and you together.',
        'Is there an Flight master nearby or is it my heart taking off?',
        'Do you play Heartstone? I can show you my deck.',
        'That tabard looks great on you… as a matter of fact, so would I.',
        'You’re so hot, you make the Northrend look like Tanaris.',
        'I must be in Medivh`s tower, because you are truly magical!',
        'Your voice melt chocolates.',
        "You know what you would look really beautiful in? My arms.",
        'You’re so hot, my armor melts',
        'You look just like my sister… who died under mysterious circumstances.',
        'I would give myself an A+',
        'Say baby. You`re pretty, I`m pretty, what say we go back to my place and stare at each other for a while.',
        'If loving me is wrong, you don`t wanna be right!',
        'How much does a Titan weigh? Enough to break the ice.',
        'You could never be ice cream because you`re so hot...and ${playerRace}',
        "Did you fart? 'Cause you just blew me away.",
        "I like you so much, I want to hug your internal organs.",
        "I think you're suffering from a lack of vitamin me.",
        "People call me ${playerName}, but you can call me tonight.",
        "I may not be the best looking ${playerGuyGirl} here. But I’m the only one talking to you.",
        "If I said I want your armor, would you hold it against me?",
        "Love must truly be blind because you don’t see me at all.",
        "You’re like asthma. You just take my breath away.",
        "You look so good. I’ll marry your brother just to be in your family.",
        "Despite hundreds of tries I've had very little success with screaming woo-hoo out my window.",
    }

    if (playerGender == "male" and targetGender == "female") then
        table.insert(flirtLines, "Want to play Barbies? I'll be Ken and you can be the box I come in!")
    end

    -- from
    if (playerRace == "Worgen" or playerRace == "Tauren" or playerRace == "Vulpera" or playerRace == "Pandaren" or playerRace == "Highmountain Tauren") then
        table.insert(flirtLines, "Wanna see me comb my hair, really fast?")
        table.insert(flirtLines, "My name isn’t Elmo, but you can tickle me any time you want to.")
    end

    if (targetRace == "Worgen" or targetRace == "Tauren" or targetRace == "Vulpera" or targetRace == "Pandaren" or targetRace == "Highmountain Tauren") then
        table.insert(flirtLines, "I like your fur, it's so soft and fluffy.");
    end

    if (targetRace == "Vulpera") then
        table.insert(flirtLines, "hey there foxy ${targetManWoman}");
    end

    if (playerRace == "Scourge" or playerRace == "Undead" or playerClass == "Death Knight") then
        table.insert(flirtLines, "You have lovely skin. I can’t wait to wear it.")
        table.insert(flirtLines, "The last time I saw a body like yours, I was burying it in my basement.")
    end

    if (playerClass == "Hunter") then
        table.insert(flirtLines, "I tracked your Heartstone back to me.");
        table.insert(flirtLines, "I'm great with a comb. Wanna watch me comb my hair really fast?'.");
    end

    if (playerRace == "Void Elf" or playerClass == "Warlock") then
        table.insert(flirtLines, "If the void is eternal, will you be my void?");
    end

    if (playerClass == "Warlock") then
        table.insert(flirtLines, "The last time I saw a body like yours, I was burying it in my basement.");
        table.insert(flirtLines, "I put the romance in necromancy.");
    end

    if (playerClass == "Rogue") then
        table.insert(flirtLines, "I’m here to steal your Heartstone.");
    end

    if (playerClass == "Shaman") then
        table.insert(flirtLines, "If i could learn any new spell, it would be a love totem to entangle you.");
    end

    if (playerClass == "Paladin") then
        table.insert(flirtLines, "${targetGuyGirl}, I have the blessing of protection!");
        table.insert(flirtLines, "Do you feel it? And that just my Devotion Aura.");
    end

    if (playerClass == "Priest") then
        table.insert(flirtLines, "You taught me a new spell; Power Word: Love");
    end

    if (playerClass == "Warrior") then
        table.insert(flirtLines, "If you say yes now, I will never cleave your side!");
    end

    if (playerRace == "Lightforged Draenei" or playerClass == "Paladin" or playerClass == "Priest") then
        table.insert(flirtLines, "You're my light in the darkness.");
    end

    if (playerGender == "male" and (playerClass == "Warrior" or playerClass == "Paladin" or playerClass == "Demon Hunter" or playerClass == "Death Knight" or playerRace == "Mechagnome")) then
        table.insert(flirtLines, "My armor is bending bending just by looking at you!");
    end

    if (playerRace == "Mechagnome") then
        table.insert(flirtLines, "You know, I have over 200 Bionicles.");
    end

    if (playerClass == "Death Knight" or playerRace == "Mechagnome") then
        table.insert(flirtLines, "Let's be ${playerManWoman} and ${targetManWoman} until decay makes us fall apart.");
    end

    if (playerClass == "Druid") then
        table.insert(flirtLines,
            "Did you ever had the chance to hug a tree without feeling you are the only one?, now is your chance!");
        table.insert(flirtLines, "Forget that rogue. As a Druid, I've got the strength AND the agility.");
        table.insert(flirtLines, "I'll always be your beast of burden.");
    end

    if (targetRace == "Goblin") then
        table.insert(flirtLines, "I don't care if you are a gold digger.");
    end

    if (playerRace == "Goblin" and playerGender == "male") then
        table.insert(flirtLines, "I'm no Kobald, but you can take my candle anytime!");
    end

    if (playerRace == "Goblin" or playerRace == "Gnome" or playerRace == "Mechagnome") then
        table.insert(flirtLines, "Fly away in my space rocket. You no need put money in my pocket.");
    end


    if (playerRace == "Zandalari Troll" or playerRace == "Troll") then
        table.insert(flirtLines, "Don't jinx it and do some voodoo with me.");
    end

    if (playerGender == "female") then
        table.insert(flirtLines,
            "You can eat my skittles. It's the sweetest in the middle. Pink is the flavor. Solve the riddle.");
    end

    if (playerRace == "Dracthyr") then
        table.insert(flirtLines, "Do you think it's hot to know that I am a member of Imagine Dragons?");
    end

    if (targetRace == "Earthen") then
        table.insert(flirtLines, "I will make you feel like a rockstar.");
        table.insert(flirtLines, "I will make you rock in both minor and major scales.");
    end

    -- to
    if (targetClass == "Druid" or targetRace == "Dracthyr" or targetRace == "Tauren" or targetRace == "Highmountain Tauren") then
        table.insert(flirtLines, "It was obvious that you were the beast of the show!");
    end

    if (targetClass == "Druid") then
        table.insert(flirtLines, "I seem to have lost my teddy bear. Would you like to be my teddy bear tonight?");
    end

    if (targetClass == "Druid" and playerClass == "Druid") then
        table.insert(flirtLines, "Did I see you in the Emrald Dream last night? Or was it just perhaps my own.");
    end

    if (targetRace == "Dracthyr") then
        table.insert(flirtLines, "Are you one of those fiery Dragonborn, because it's getting hot in here.");
        table.insert(flirtLines, "On a scale of 0 to you, it’ll be you.");
        table.insert(flirtLines, "let’s hatch an egg together.");
    end

    if (targetClass == "Demon Hunter") then
        table.insert(flirtLines, "For you, I AM prepared");
        table.insert(flirtLines, "Aren't you a handsome devil.");
        table.insert(flirtLines, "No need to be green with envy, because I'm all yours.");
        table.insert(flirtLines, "Demonic power or not, I was already obsessed by you!");
    end;

    if (targetRace == "Night Elf" or targetRace == "Void Elf" or targetRace == "Blood Elf" or targetRace == "Nightborne") then
        table.insert(flirtLines, "Your leafy long ears remind of the trees at my mother's home");
        table.insert(flirtLines, "I really like your eyebrows");
    end


    if (targetRace == "Vulpera") then
        table.insert(flirtLines, "Foxy ${targetPoppaMomma}, You smell kinda pretty. Wanna smell me? Hoo-hah!");
    end

    if (targetRace == "Draenei" and targetRace == "Lightforged Draenei") then
        table.insert(flirtLines, "Was you father an Draenei? Because there’s nothing else like you on Azeroth!");
    end

    if (targetClass == "Hunter") then
        table.insert(flirtLines, "Your arrow hit my heart.");
    end

    if (targetClass == "Warlock") then
        table.insert(flirtLines, "Talk Demonic to me!");
    end

    if (targetClass == "Priest") then
        table.insert(flirtLines, "Your prayers make me feel divine.");
    end

    if ((targetClass == "Mage" or playerClass == "Mage") and not (playerGender == targetGender)) then
        table.insert(flirtLines, "Wanna help me conjure a new life form?");
    end

    if (targetClass == "Priest" or targetClass == "Paladin" or targetClass == "Monk" or targetClass == "Warlock" or targetClass == "Mage") then
        table.insert(flirtLines, "They say that you have spells of love, so would you mind starting to cast one on me?");
        table.insert(flirtLines, "Did you have buffs for breakfast? Because you look magically delicious!");
    end

    if (targetRace == "Scourge" or targetRace == "Undead") then
        table.insert(flirtLines, "Do you have a shovel? Because I’m digging you.");
        table.insert(flirtLines,
            "Take me out tonight. Where there's music and there's people, and they're young and undead.");
        table.insert(flirtLines, "I can’t think of anyone else I’d rather survive a Zombie Apocalypse with.");
    end

    if (playerClass == "Paladin" and targetClass == "Paladin") then
        table.insert(flirtLines, "I can swing my hammer and you read your divine libram.");
    end

    if (playerRace == "Mechagnome") then
        table.insert(flirtLines, "I'm not programmed for love, but I'm willing to learn.")
    end

    if (targetRace == "Earthen") then
        table.insert(flirtLines, "I would leave no rock unturned.")
    end

    if (playerRace == "Earthen") then
        table.insert(flirtLines, "Would you like to see my rock collection?")
        table.insert(flirtLines, "Would you like to rock my sharp edges off?")
        table.insert(flirtLines, "I'm ready to get rubbled.")
    end

    -- Mature content
    if (ExpressYourElfVars.allowMatureContent) then
        if (playerRace == "Orc") then
            table.insert(flirtLines,
                "I'm a lot like Thrall, I'm a warchief in the streets and a world shaman in the sheets.");
        end

        if (playerClass == "Warlock") then
            table.insert(flirtLines,
                "I'm not wearing any armor. I hope you don't crit.");
            table.insert(flirtLines,
                "I could say I have my Munchausen syndrome on you, but so does any other Warlock.");
        end
    end

    -- Add removed flirt lines, that Blizard removed
    if (ExpressYourElfVars.allowMatureContent and ExpressYourElfVars.bringBackRemoved) then
        if (playerRace == "Blood Elf" and playerGender == "female") then
            table.insert(flirtLines, "Is that a mana wyrm in your pocket, or are you just happy to see me?");
            table.insert(flirtLines, "Normally, I only ride on epic mounts... But, let's talk.");
        end

        if (playerRace == "Demon Hunter" and playerRace == "Blood Elf" and playerGender == "female") then
            table.insert(flirtLines, "Are you sure you're not part-demon? I find myself wanting to stalk you.");
            table.insert(flirtLines,
                "I hope you like tattoos, because they're permanent. If you don't believe me, you could try rubbing them off.");
        end

        if (playerRace == "Goblin" and playerGender == "female") then
            table.insert(flirtLines,
                "I'm short and good with my hands... how can you resist?");
        end

        if (playerRace == "Goblin" and targetGender == "male") then
            table.insert(flirtLines,
                "Is that your wallet? Or are you just glad to see me? Both I hope!");
            table.insert(flirtLines,
                "So then, he asked me to go up on him!");
        end

        if (playerRace == "Goblin" and playerGender == "male") then
            table.insert(flirtLines,
                "Ever rode a rocket before? Mine's huge.");
            table.insert(flirtLines,
                "I got what you need. *sound of zipper*");
        end

        if (playerRace == "Goblin" and playerGender == "male" and targetGender == "female") then
            table.insert(flirtLines,
                "I like my ${targetRace} the way I like my fuses: Short, fast and ready to blow.");
        end

        if (playerRace == "Orc" and playerGender == "male") then
            table.insert(flirtLines,
                "That armor looks good on you. It would look even better on my floor.");
            table.insert(flirtLines,
                "Um... You look like a lady.");
        end

        if (playerRace == "Tauren" and playerGender == "female" and targetGender == "male") then
            table.insert(flirtLines,
                "I've got big, soulful eyes, long eyelashes and a wet tongue. What more could a guy want?")
        end

        if (playerRace == "Tauren" and playerGender == "male" and targetGender == "female") then
            table.insert(flirtLines, "Free rides for the ladies.")
            table.insert(flirtLines, "Y'know, older bulls really only have one function.")
        end

        if (playerRace == "Troll" and playerGender == "female") then
            table.insert(flirtLines,
                "When enraged, and in heat, a female troll can mate over 80 times in one night. Be you prepared?");
        end

        if (playerRace == "Troll" and playerGender == "male") then
            table.insert(flirtLines,
                "Want some of my jungle love?");
        end

        if (playerRace == "Undead" and playerGender == "female") then
            table.insert(flirtLines,
                "Us undead girls really know how to have a good time, because after all, what's the worst thing that could happen?")
        end

        if (playerRace == "Undead" and playerGender == "male") then
            table.insert(flirtLines, "Once you go dead, you never go back. ")
        end

        if (playerRace == "Highmountain Tauren" and playerGender == "female") then
            table.insert(flirtLines, "Are you staring at my rack?")
            table.insert(flirtLines, "You don't need to be from the Skyhorn tribe to join the mile high club.")
        end

        if (playerRace == "Highmountain Tauren" and playerGender == "male") then
            table.insert(flirtLines, "Trust me... I have experience at exploring deep places.")
        end

        if (playerRace == "Nightborne" and playerGender == "female" and targetGender == "male") then
            table.insert(flirtLines, "Is that an illusion in your pocket, or are you just happy to see me?")
        end

        if (playerRace == "Nightborne" and playerGender == "female") then
            table.insert(flirtLines, "There's no area denial in this raid.")
        end

        if (playerRace == "Nightborne" and playerGender == "male") then
            table.insert(flirtLines, "Mmmm, I wanna tap that ley line.")
        end

        if (playerRace == "Draenei" and playerGender == "female") then
            table.insert(flirtLines, "I want you to *lick and splat* my *gurgling noises* *slurping noises*")
            table.insert(flirtLines, "You have heard of the Exodar? I will show you the Sexodar!")
        end

        if (playerRace == "Draenei" and playerGender == "male") then
            table.insert(flirtLines,
                "Would you be offended if I said that you had a beautiful transgoto? The other one, that's not bad either.")
        end

        if (playerRace == "Dwarf" and playerGender == "female") then
            table.insert(flirtLines,
                "I'll have you know I can flatten steel with my thighs.")
        end

        if (playerRace == "Dwarf" and playerGender == "male") then
            table.insert(flirtLines,
                "You look pretty, I like your hair, here's a drink... Are you ready now?")
            table.insert(flirtLines,
                " I must be asleep, 'cause you are a dream come true. Also, I'm slightly damp.")
        end

        if (playerRace == "Night Elf" and playerGender == "female") then
            table.insert(flirtLines, "Sure, I've got exotic piercings.")
        end

        if (playerRace == "Night Elf" and playerGender == "male") then
            table.insert(flirtLines, "I hope you're not afraid of snakes.")
        end

        if (playerRace == "Worgen" and playerGender == "female") then
            table.insert(flirtLines, "Being bitchy is in my blood. Don't pretend you don't like it.")
            table.insert(flirtLines, "Don't worry,... the fur is just something to hold onto.")
            table.insert(flirtLines, "(sniffs), Well, hello... ")
            table.insert(flirtLines, "I'll teach you to make my legs shake.")
            table.insert(flirtLines, "You know... worgen women have six nipples.")
            table.insert(flirtLines, "It all matches. Trust me.")
        end

        if (playerRace == "Worgen" and playerGender == "male") then
            table.insert(flirtLines, "I hope you like it 'ruff'.")
            table.insert(flirtLines, "Being with me is like having two guys in one.")
            table.insert(flirtLines, "I'd like to mark your territory.")
            table.insert(flirtLines, "What big ears I have? You should check out the rest of me!")
            table.insert(flirtLines, "If you play nice, I'll share my bone with you...")
        end

        if (playerRace == "Dark Iron Dwarf" and playerGender == "male") then
            table.insert(flirtLines, "Interested in joining the mile deep club?")
        end

        if (playerRace == "Lightforged Draenei" and playerGender == "female") then
            table.insert(flirtLines, "When in doubt... touch anything that glows.")
            table.insert(flirtLines, "Let's go back to my ship and twist our nethers.")
        end

        if (playerRace == "Lightforged Draenei" and playerGender == "female" and targetGender == "male") then
            table.insert(flirtLines, "I admire a soldier who can... remain... at attention.")
        end

        if (playerRace == "Mechagnome" and playerGender == "female") then
            table.insert(flirtLines, "I used to be a ten, but then I upgraded to an eleven.")
        end

        if (playerRace == "Pandaren" and playerGender == "female") then
            table.insert(flirtLines,
                "Oh, I've never done THAT before.. Uh... You're not doing it right... ")
            table.insert(flirtLines,
                "Let me show you my kung fu grip.")
        end

        if (playerRace == "Pandaren" and playerGender == "male") then
            table.insert(flirtLines,
                "Yeah, I would tap dat keg.")
            table.insert(flirtLines,
                "Want to try breeding in captivity?")
            table.insert(flirtLines,
                "Nice pants. What's the drop rate?")
            table.insert(flirtLines,
                "Wanna try crane position? Oh no... For you, monkey style.")
        end
    end

    -- Oh no, too soon!
    if (playerClass == "Priest" and targetLevel < 18) then
        print('You should wait with flirting until ${targtName} is higher than level 18.');
        return nil
    end

    -- randomize result
    pickedLine = flirtLines[fastrandom(1, #flirtLines)]

    return ExpressYourElf.Helpers.parseText(
        ExpressYourElf.Flirt.GetRandomPrefix(targetRace) .. pickedLine,
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
    if (ExpressYourElfVars.flirtConsent == false) then
        print("ExpressYourElf: You did not checked the flirt consent. Please check this in the settings.")
        print("By checking the box you agree to the terms and conditions of flirting with other players.")
        print("You can do this by typing /eyelf")
        return
    end

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

        local flirtLine                                                      = ExpressYourElf.Flirt.GetMessage(
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

        local emotes                                                         = {
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
            'CURTSEY',
            'EYE',
            'GAZE',
            'WHISTLE'

        }

        if (flirtLine ~= nil) then
            local randomEmote = emotes[fastrandom(1, #emotes)]

            DoEmote(randomEmote, "")
            SendChatMessage(flirtLine, "SAY", nil, index)
        end
    end
end
