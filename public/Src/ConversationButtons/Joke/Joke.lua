-- init

ExpressYourElf.Joke = {}

function ExpressYourElf.Joke.GetMessage(
    playerName,
    playerGender,
    playerClass,
    playerRace,
    playerLevel,
    playerManWoman,
    playerGuyGirl
)
    local randomWorld = ExpressYourElf.Helpers.GetRandomWorld()
    local d = C_DateAndTime.GetCalendarTimeFromEpoch(1e6 * 60 * 60 * 24)

    local playerSex = "girls"

    if (playerGender == "male") then
        oppositeSex = "guys"
    end
    -- common
    local pickedLine

    local jokeLines = {
        "What musician do you find in Ice Crown Citadel? The Arthas formally known as Prince.",
        "Why did the gnome become an alchemist? He was good at mixing drinks.",
        "How many WoW developers does it take to change a lightbulb? None, it's working as intended.",
        "A Draeni, a Human and a Night Elf all walk in to a bar. The Gnome walks under it.",
        "Why didn't Kel'Thuzad go to the ball? He had no body to go with.",
        "Why do hardcore raiders smell? Because they never wipe!",
        "Why did the enchanter have to clean out his bank? Because it was full of dust!",
        "How do you know someone has been playing since Vanilla? Don't worry. They'll tell you.",
    }

    if (playerClass == "Druid") then
        table.insert(jokeLines, "What do you call a Moonwell filled with resto druids? HoT-tub.")
    end

    if (playerClass == "Paladin") then
        table.insert(jokeLines,
            "How many paladins does it take to change a lightbulb? Two, one to hold the ladder, the other one to hold the light.")
    end

    if (playerClass == "Shaman" or playerClass == "Druid") then
        table.insert(jokeLines,
            "I'm a ${playerClass}. I can shape shift. I can heal. I can do a lot of things. But I can't dance.")
        table.insert(jokeLines, "Why did the Shaman cross the road? -To get to the other side.")
    end

    if (playerClass == "Warlock") then
        table.insert(jokeLines,
            "I'm a Warlock. I can summon demons. I can cast curses. I can do a lot of things. But I can't dance.")
    end

    if (playerClass == "Mage") then
        table.insert(jokeLines,
            "I'm a Mage. I can cast spells. I can teleport. I can do a lot of things. But I can't dance.")
        table.insert(jokeLines, "What do you call a mage who sucks at fishing? A bad caster!")
    end

    if (playerClass == "Monk" or playerClass == "Priest" or playerClass == "Paladin") then
        table.insert(jokeLines,
            "I'm a ${playerClass}. I can heal. I can cast spells. I can do a lot of things. But I can't dance.")
    end

    if (playerClass == "Hunter") then
        table.insert(jokeLines,
            "I'm a Hunter. I can tame beasts. I can track enemies. I can do a lot of things. But I can't dance.")
    end

    if (playerClass == "Rogue") then
        table.insert(jokeLines,
            "I'm a Rogue. I can pick locks. I can sneak around. I can do a lot of things. But I can't dance.")
        table.insert(jokeLines,
            "How many rogues does it take to kill a paladin? Two, one to attack him on the spot and the other to wait for him back at the inn.")
        table.insert(jokeLines, "What do noobs and I have in common? We both pick locks.")
    end

    if (playerClass == "Warrior") then
        table.insert(jokeLines,
            "I'm a Warrior. I can wield a sword. I can wear heavy armor. I can do a lot of things. But I can't dance.")
        table.insert(jokeLines, "I'm a Warrior. I can shout. I can scream. I can do a lot of things. But I can't dance.")
        table.insert(jokeLines, "Why are warriors the worst salesman? They charge too much!")
        table.insert(jokeLines, "Why did the warrior go to the bank? To get his charge back!")
        table.insert(jokeLines, "Why didn't the warrior cross the road? No path available.")
    end

    if (playerClass == "Death Knight") then
        table.insert(jokeLines,
            "I'm a Death Knight. I can raise the dead. I can cast spells. I can do a lot of things. But I can't dance.")
    end

    if (playerClass == "Demon Hunter") then
        table.insert(jokeLines,
            "I'm a Demon Hunter. I can see in the dark. I can wield glaives. I can do a lot of things. But I can't dance.")
    end

    if (playerClass == "Dracthyr") then
        table.insert(jokeLines,
            "I'm a Dracthyr. I can breathe fire. I can fly. I can do a lot of things. But I can't dance.")
    end

    if (playerRace == "Undead") then
        table.insert(jokeLines, "Why did the undead cross the road? To get to the other side.")
        table.insert(jokeLines, "Why did the undead go to the bank? To get his arm back.")
        table.insert(jokeLines, "Stop hitting me, you're beating a dead horse")
        table.insert(jokeLines, "What did the Forsaken say to the Silvermoon street walker? You can keep the tip.")
        table.insert(jokeLines, "What do you call a forsaken who likes bad jokes? Pundead")
    end

    if ((playerRace == "Gnome" or playerRace == "Goblin") and playerClass == "Priest") then
        table.insert(jokeLines, "What do you call a Gnome Discipline Priest? A compact disc.")
    end

    if (playerRace == "Goblin") then
        table.insert(jokeLines, "How do you start a goblin foot race? Roll a copper down a hill.")
        table.insert(jokeLines, "Why do goblins have such big noses? Air is free.")
    end


    -- Mature content
    if (ExpressYourElfVars.allowMatureContent) then
        table.insert(jokeLines,
            'A Gnome and Tauren put their peepees in the water. The Gnome says "The water is 40 deegres". The Tauren says "Yea, and 5 ft deep"')
        table.insert(jokeLines, "How do you know you play too much WoW? When your partner's pants have a low drop rate.")

        if (playerClass == "Death Knight") then
            table.insert(jokeLines,
                "Whats the difference between Death Knights and Prostitutes? -None! They're both cheap, easy and spread diseases")
        end

        if (playerClass == "Shaman") then
            table.insert(rudeLines, "Which class gets the most chicks? A male enhancement shaman.")
        end
    end

    -- Add removed flirt lines, that Blizard removed
    if (ExpressYourElfVars.allowMatureContent and ExpressYourElfVars.bringBackRemoved) then
        if (playerRace == "Blood Elf" and playerGender == "female") then
            table.insert(jokeLines,
                "So I went to this troll spa the other day and I wound up with dreadlocks and a frigging bone in my nose! I mean come on! Who PAYS for that?")
            table.insert(jokeLines, "So you mean I'm stuck with this hair color?!")
        end

        if (playerRace == "Blood Elf" and playerGender == "female" and playerClass == "Demon Hunter") then
            table.insert(jokeLines, "Of course these are real. You...mean the tattoos, right?")
        end

        if (playerRace == "Blood Elf" and playerGender == "male") then
            table.insert(jokeLines, "Don't you wish your girlfriend was hot like me?")
        end

        if (playerRace == "Goblin" and playerGender == "female") then
            table.insert(jokeLines,
                "I'm a modern goblin woman. Independent? I still let men do nice things to me. But I stopped giving them any credit.")
            table.insert(jokeLines,
                "I'm a free spirit. I don't like to be tied down. What? You mean literally? Oh no... totally into that.")
            table.insert(jokeLines, "Out of the way, you nobgoblin!")
        end

        if (playerRace == "Goblin" and playerGender == "male") then
            table.insert(jokeLines,
                "Yeah. He told me to tie her up and do whatever I wanted to her... so I took her stereo!")
        end

        if (playerRace == "Orc" and playerGender == "female") then
            table.insert(jokeLines, "What's estrogen? Can you eat it?")
        end

        if (playerRace == "Tauren" and playerGender == "female") then
            table.insert(jokeLines, "One time I laughed so hard I milked all over the floor.")
        end

        if (playerRace == "Tauren" and playerGender == "male") then
            table.insert(jokeLines, "Homogenized? No way, I like the ladies.")
            table.insert(jokeLines, "I know it seems strange, but I'm practically a cow. So why am I wearing leather?")
        end

        if (playerRace == "Troll" and playerGender == "male") then
            table.insert(jokeLines, "I've got a shrunken head: I just came out of the pool.")
            table.insert(jokeLines,
                "I heard if you cut off an extremity it'll regenerate a little bigger. Don't believe it.")
            table.insert(jokeLines, "I like my women dumpy and droopy with halitosis.")
        end

        if (playerRace == "Undead" and playerGender == "female") then
            table.insert(jokeLines, "Yes, they're REAL! They're not mine, but they're real!")
        end

        if (playerRace == "Draenei" and playerGender == "female") then
            table.insert(jokeLines, "Yes, they are real, and they can cut glass.")
            table.insert(jokeLines, "Do Gnomes have a vibrate setting? I'm just curious.")
        end

        if (playerRace == "Draenei" and playerGender == "male") then
            table.insert(jokeLines,
                "When we arrived here I lost many jewels that had been in my family for generations. If you could get your hands on my family jewels I would be deeply appreciative.")
        end

        if (playerRace == "Dwarf" and playerGender == "female") then
            table.insert(jokeLines, "No they're not real, but thanks for noticing.")
            table.insert(jokeLines, "It's like my father always used to say: 'Shut up, and get out.'")
            table.insert(jokeLines, "My Uncle has brass balls, no really!")
            table.insert(jokeLines,
                "I give myself a Dutch oven pedicure every night. I've got no foot fungus at all. My toes are pristine.")
        end

        if (playerRace == "Dwarf" and playerGender == "male") then
            table.insert(jokeLines, "Oh, I'm having a wardrobe malfunction! ('twang') Ooo, there's me hammer.")
        end

        if (playerRace == "Gnome" and playerGender == "male") then
            table.insert(jokeLines,
                "I'd like to give a shout out to my boys in Gnomeregan. Keeping it real Big-T, Snoop-Pup and Little Dees. Y'all are short, but you're real, baby!")
        end

        if (playerRace == "Human" and playerGender == "female") then
            table.insert(jokeLines, "Why does everyone automatically assume I know tailoring and cooking?")
            table.insert(jokeLines, "I like to fart in the tub.")
        end

        if (playerRace == "Human" and playerGender == "male") then
            table.insert(jokeLines,
                "A guy walked up to me and said 'I'm a teepee, I'm a wigwam, I'm a teepee, I'm a wigwam!' and I said 'Relax man, you're too tense!'")
        end

        if (playerRace == "Night Elf" and playerGender == "female") then
            table.insert(jokeLines, "Oh, look, I'm dancing again! I hope all your friends are enjoying the show...")
        end

        if (playerRace == "Night Elf" and playerGender == "male") then
        end

        if (playerRace == "Worgen" and playerGender == "female") then
            table.insert(jokeLines,
                "For the holiday, he tried to give me a bone. No...a bone. An ordinary bone. What did you think I...oh...")
        end

        if (playerRace == "Worgen" and playerGender == "male") then
            table.insert(jokeLines,
                "It's nothing personal, I just don't feel that I really know a person until I've sniffed their crotch.")
            table.insert(jokeLines, "Alright: I've got hairy palms. So what?")
        end

        if (playerRace == "Dark Iron Dwarf" and playerGender == "male") then
        end

        if (playerRace == "Lightforged Draenei" and playerGender == "female") then
            table.insert(jokeLines, "Have you seen Prophet Velen's new dance? He calls it the 'Mac'Areena'!")
        end

        if (playerRace == "Mechagnome" and playerGender == "male") then
            table.insert("Why yes, I do have a vibrate setting! Why does everyone keep asking?")
        end

        if (playerRace == "Pandaren" and playerGender == "female") then
            table.insert(jokeLines,
                "As your leader, I encourage you from time to time, and always in a respectful manner, to question my logic. I promise you, here and now, no subject will ever be taboo. Except of course, the subject that was JUST under discussion.")
            table.insert(jokeLines,
                "The price you pay for bringing up my Pandaren heritage as a negative is...I collect your head! Now, if ANY ONE OF YOU HAS ANYTHING ELSE TO SAY, NOW IS THE TIME!")
        end

        if (playerRace == "Pandaren" and playerGender == "male") then
        end
    end

    -- randomize result
    pickedLine = jokeLines[fastrandom(1, #jokeLines)]

    return ExpressYourElf.Helpers.parseText(
        pickedLine,
        {
            playerName = playerName,
            playerGender = playerGender,
            playerClass = playerClass,
            playerRace = playerRace,
            playerLevel = playerLevel,
            playerManWoman = playerManWoman,
            playerGuyGirl = playerGuyGirl,
            oppositeSex = oppositeSex,
            randomWorld = randomWorld,
        }
    )
end

function ExpressYourElf.Joke.run()
    local playerName, playerGender, playerClass, playerRace, playerLevel = ExpressYourElf.Helpers
        .GetPlayerInformation()

    local playerGuyGirl                                                  = ExpressYourElf.Helpers.GetGuyGirl(
        playerGender)
    local playerManWoman                                                 = ExpressYourElf.Helpers.GetManWoman(
        playerGender)

    local JokeLine                                                       = ExpressYourElf.Joke.GetMessage(
        playerName,
        playerGender,
        playerClass,
        playerRace,
        playerLevel,
        playerManWoman,
        playerGuyGirl
    )

    local emotes                                                         = {
        'CACKLE',
        'CHUCKLE',
        'GIGGLE',
        'LAUGH',
        'COUGH',
        'GRIN',
        'ROFL',
        'WICKED'
    }

    if (JokeLine ~= nil) then
        local randomEmote = emotes[fastrandom(1, #emotes)]

        DoEmote(randomEmote, "")
        SendChatMessage(JokeLine, "SAY", nil, index)
    end
end
