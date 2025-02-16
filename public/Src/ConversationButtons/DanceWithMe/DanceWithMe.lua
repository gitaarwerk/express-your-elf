-- init

ExpressYourElf.DanceWithMe = {}

local function getRandomPrefix()
    local prefix = {
        '*${playerName} sings*: ',
        '*${playerName} dances to*: ',
        '*${playerName} chants*: ',
        '*${playerName} hums*: ',
        '*${playerName} moves to the lyrics of*: ',
    };

    return prefix[fastrandom(1, #prefix)];
end

local function getPlayerMessage(
    playerName,
    playerGender,
    playerClass,
    playerRace,
    playerLevel,
    playerGuyGirl,
    playerHeShe,
    playerHimHer,
    playerHisHer,
    playerSirMam,
    playerManWoman
)
    local randomWorld = ExpressYourElf.Helpers.GetRandomWorld()
    local d = C_DateAndTime.GetCalendarTimeFromEpoch(1e6 * 60 * 60 * 24)

    local playerSex = "girl"
    local oppositeSex = "guys"
    local oppositeBfGf = "boyfriend"

    if (playerGender == "male") then
        playerSex = "guy"
        oppositeSex = "girls"
        oppositeBfGf = "girlfriend"
    end

    local zoneName = GetZoneText();

    -- common
    local pickedLine

    local danceLines = {
        'Tom bo li de se de moi ya, yeah jambo jambo.',
        'Are we ${playerRace}, or are we dancers.',
        "Beats so big I'm stepping on ${playerRace}.",
        "TELL ME WHY!?, I don't like ${randomWorld}... TELL ME WHY!? I don't like ${randomWorld}",
        "My ${race} hips don't lie.",
        "Is this the real life? Is this just fantasy?",
        "It's murder on the raid floor. But you'd better not steal the moves. Yhea Yhea! Boss' gonna burn this dungeon down right now!",
        "Like a ${playerRace}, raiding for the very first time!",
        "Like a ${playerClass}, raiding for the very first time!",
        "They're out to get you, there's demons closing in on every side. That this is raiding, raid raid night!",
        "Lack toes, intolerant. It sucks when you can't stand! Lack toes, intolerant. Anything, when you can't stand!",
        "Silithus gel, I think it's swell. It tastes just like chicken. And when you get sickened. It makes you feel well.",
        "Poopy-di scoop. Scoop-diddy-whoop. Whoop-di-scoop-di-poop!",
        "Ob-La-Di, Ob-La-Da",
        "Prance Forward",
        "I can't stop damaging you. Time passes quickly and your flesh is few. I won't stop till I'm through hurting you",
        "Oh, baby, when you talk like that, you make a ${race} go mad.",
        "Shashay Left",
        "Boogie Down",
        "Shimmy Right",
        "Slow dancing in a Burning Crusade",
        "Is it strange to dance so soon? I danced myself into the tomb",
        "I'm the scat ${playerGuyGirl}, Ski-bi-dibby-dib yo-da-dub-dub, yo-da-dub-dub",
        "I bless the rains down in Silithus",
        "SWEEET CARO .... LINEEEEE.... OHHH OH OHHHHH",
        "I AM THE GOD OF HELL FIRE! and I bring you FIRE! I beg you to BURN!",
        "I'm waiting.... waiting..... waiting for the ${randomWorld} to burn.",
        "I don't like ${zoneName}, oh no,... I love it.",
        "Love me love me, say that you love me. Fool me fool me, go on and fool me.",
        "Burning down ${zoneName}, my ${zoneName}!"
    }

    -- christmas
    if ((d.month == 12 and d.day == 24) or (d.month == 12 and d.day == 25)) then
        table.insert(danceLines, "All I want for Christmas, is you!");
    end

    -- eastern
    if ((d.month == 4 and d.day == 4) or (d.month == 4 and d.day == 5)) then
        table.insert(danceLines, "I'm all ears for you!");
    end

    -- halloween
    if ((d.month == 10 and d.day == 30) or (d.month == 10 and d.day == 31)) then
        table.insert(danceLines, "I'm a ghost, I'm a ghost, I'm a ghost!");
        table.insert(danceLines, "There's a ghost down in the hall,  There's a ghoul upon the bed....");
    end

    -- valentine
    if ((d.month == 2 and d.day == 13) or (d.month == 2 and d.day == 14)) then
        table.insert(danceLines, "Love me, love me, pretend that you love me.");
    end

    if (playerRace == "Tauren" or playerRace == "Highmountain Tauren") then
        table.insert(danceLines, "I'm a cow{playerGuyGirl}, dead or alive!")
    end

    if (playerRace == "Troll" or playerRace == "Zandalari Troll") then
        table.insert(danceLines, "I'm a voodoo ${playerGuyGirl}, I'm a voodoo ${playerGuyGirl}")
        table.insert(danceLines, "TroLolololo trolol,trolololol, trolololol.")
    end

    if targetHeShe == "he" then
        table.insert(danceLines, "Señor más fina,... Who's that guy?)")
    else
        table.insert(danceLines, "Señorita más fina,... Who's that girl)")
    end

    -- from
    if (playerRace == "Worgen" or playerRace == "Gilnean" or playerRace == "Tauren" or playerRace == "Vulpera" or playerRace == "Pandaren" or playerRace == "Highmountain Tauren") then
    end

    if (playerRace == "Scourge" or playerRace == "Undead" or playerClass == "Death Knight") then
    end

    if (playerClass == "Hunter") then
    end

    if (playerRace == "Void Elf" or playerClass == "Warlock") then
    end

    if (playerClass == "Warlock") then
    end

    if (playerClass == "Rogue") then
    end

    if (playerClass == "Shaman") then
    end

    if (playerClass == "Paladin") then
    end

    if (playerClass == "Priest") then
    end

    if (playerClass == "Warrior") then
    end

    if (playerRace == "Lightforged Draenei" or playerClass == "Paladin" or playerClass == "Priest") then
    end

    if (playerGender == "male" and (playerClass == "Warrior" or playerClass == "Paladin" or playerClass == "Demon Hunter" or playerClass == "Death Knight" or playerRace == "Mechagnome")) then
    end

    if (playerRace == "Mechagnome") then
    end

    if (playerClass == "Death Knight" or playerRace == "Mechagnome") then
    end

    if (playerClass == "Druid") then
    end

    if (playerRace == "Goblin" and playerGender == "male") then
    end

    if (playerRace == "Goblin" or playerRace == "Gnome" or playerRace == "Mechagnome") then
    end

    if (playerRace == "Zandalari Troll" or playerRace == "Troll") then
    end

    if (playerGender == "female") then
    end

    if (playerRace == "Dracthyr") then
    end

    if (playerRace == "Mechagnome") then
    end

    if (playerRace == "Earthen") then
    end

    -- Mature content
    if (ExpressYourElfVars.allowMatureContent) then
        table.insert(danceLines,
            "${playerRace} ${playerGuyGirl}s, we're so unforgettable. Tiny bracers and tabards on top! Fel-kissed skin, so hot we'll melt your armor! Ooh oh ooh, Ooh oh ooh!");
        table.insert(danceLines,
            "What you gon' do with all that junk? All that junk inside that trunk? I'ma get, get, get, get, you drunk, Get you love drunk off my hump. My hump my hump my hump my hump my hump");
        table.insert(danceLines,
            "We don't like it on this chair. We dont like it on these stairs. We don't like it on her skirt. Mommy's hair drives daddy nuts. He even found it in his butt. But he gets sad when it gets cut. Where should her hair be instead? We like her hair up on her head.");
        table.insert(danceLines,
            "No one knows I'm cool. They all think I'm a fool. Just because I drool. And I like my pocket pool.");
    end

    -- randomize result
    pickedLine = danceLines[fastrandom(1, #danceLines)]

    return ExpressYourElf.Helpers.parseText(
        getRandomPrefix() .. pickedLine,
        {
            playerName = playerName,
            playerGender = playerGender,
            playerClass = playerClass,
            playerRace = playerRace,
            playerLevel = playerLevel,
            playerGuyGirl = playerGuyGirl,
            playerHeShe = playerHeShe,
            playerHimHer = playerHimHer,
            playerHisHer = playerHisHer,
            playerSirMam = playerSirMam,
            playerManWoman = playerManWoman,
            playerSex = playerSex,
            oppositeSex = oppositeSex,
            oppositeBfGf = oppositeBfGf,
            randomWorld = randomWorld,
            zoneName = zoneName,
        }
    )
end


local function getTargetMessage(
    playerName,
    playerGender,
    playerClass,
    playerRace,
    playerLevel,
    playerGuyGirl,
    playerHeShe,
    playerHimHer,
    playerHisHer,
    playerSirMam,
    playerManWoman,
    targetName,
    targetGender,
    targetClass,
    targetRace,
    targetLevel,
    targetGuyGirl,
    targetHeShe,
    targetHimHer,
    targetHisHer,
    targetSirMam,
    targetManWoman
)
    local randomWorld = ExpressYourElf.Helpers.GetRandomWorld()
    local zoneName = GetZoneText();

    local playerSex = "girl"
    local oppositeSex = "guys"
    local oppositeBfGf = "boyfriend"

    if (playerGender == "male") then
        playerSex = "guy"
        oppositeSex = "girls"
        oppositeBfGf = "girlfriend"
    end

    local pickedLine
    local d = C_DateAndTime.GetCalendarTimeFromEpoch(1e6 * 60 * 60 * 24)

    local danceLines = {
        "Beats so big I'm stepping on ${targetRace}.",
        '${targetName}, dance with me baby!',
        "Look at ${targetName}, ${targetHeShe}'s optimistic bout the future of ${randomWorld}.",
        '${targetHisHer} name is ${targetName}, ${targetName} is a show ${targetGuyGirl}.',
        "So, ${targetName} are you ok, are you ok ${targetName}?",
        "See that ${targetGuyGirl}, watch ${targetHisHer} scream, kicking the Dancing Queen",
        "${targetName}, you must be this tall, to ride THIS ride at the carnival.",
        "Hot summer nights, mid-July, when ${targetName} and I were forever wild.",
    }

    if (playerGender == "male") then
        table.insert(danceLines,
            "I'm a ${playerRace}, I'm a lover, I'm a child, I'm a father, I'm a sinner, I'm a saint, I do not feel ashamed.");

        -- all horde rces
        if (playerRace == "Tauren" or playerRace == "Highmountain Tauren" or playerRace == "Scourge"
                or playerRace == "Undead" or playerRace == "Troll" or playerRace == "Zandalari Troll" or playerRace == "Orc"
                or playerRace == "Mag'har" or playerRace == "Goblin" or playerRace == "Blood Elf" or playerRace == "Nightborne"
                or playerRace == "Vulpera") then
            -- all horde female leaders
            table.insert(danceLines, "A little bit of Sylvanas in my life");
            table.insert(danceLines, "A little bit of Geya'rah by my side");
            table.insert(danceLines, "A little bit of Lilian's all I need");
            table.insert(danceLines, "A little bit of Thalyssra's what I see");
            table.insert(danceLines, "A little bit of Liadrin in the sun");
            table.insert(danceLines, "A little bit of Talanji all night long");
            table.insert(danceLines, "A little bit of Mayla here I am");

            table.insert(danceLines, "A little bit of Garona in my life");
            table.insert(danceLines, "A little bit of Lilian's all I need");
            table.insert(danceLines, "A little bit of Thalyssra's what I see");
            table.insert(danceLines, "A little bit of Liadrin in the sun");
            table.insert(danceLines, "A little bit of Talanji all night long");
            table.insert(danceLines, "A little bit of Mayla here I am");
        end

        -- all alliance factions
        if (
                playerRace == "Pandaren" or playerRace == "Mechagnome" or playerRace == "Gnome" or playerRace == "Dwarf" or playerRace == "Night Elf" or playerRace == "Worgen"
                or playerRace == "Gilnean"
                or playerRace == "Draenei" or playerRace == "Void Elf" or playerRace == "Lightforged Draenei" or playerRace == "Kul Tiran" or playerRace == "Human" or playerRace == "Dark Iron Dwarf"
            ) then
            -- all alliance female leaders
            table.insert(danceLines, "A little bit of Jaina in my life");
            table.insert(danceLines, "A little bit of Fareeya by my side");
            table.insert(danceLines, "A little bit of Alleria's all I need");
            table.insert(danceLines, "A little bit of Draka's what I see");
            table.insert(danceLines, "A little bit of Moira's what I see");
            table.insert(danceLines, "A little bit of Tyrande in the sun");
            table.insert(danceLines, "A little bit of Valeera in the sun");
            table.insert(danceLines, "A little bit of Taelia all night long");
            table.insert(danceLines, "A little bit of Tess here I am");

            table.insert(danceLines, "A little bit of Vereesa by my side");
            table.insert(danceLines, "A little bit of Yrel by my side");
        end

        -- all neutral classes
        if (playerRace == "Pandaren" or playerRace == "Dracthyr" or playerRace == "Earthen") then
            table.insert(danceLines, "A little bit of Chi Chi in my life");
            table.insert(danceLines, "A little bit of Brinthe by my side");
            table.insert(danceLines, "A little bit of Adelgonn's all I need");
            table.insert(danceLines, "A little bit of Lufsela's what I see");
            table.insert(danceLines, "A little bit of Cindrethresh's what I see");
        end

        -- other female characters
        table.insert(danceLines, "A little bit of Vanessa in my life");
        table.insert(danceLines, "A little bit of Vashj by my side");
        table.insert(danceLines, "A little bit of Alexstrasza's all I need");
        table.insert(danceLines, "A little bit of Maiev's what I see");
        table.insert(danceLines, "A little bit of Azshara's what I see");
        table.insert(danceLines, "A little bit of Elisandre in the sun");
        table.insert(danceLines, "A little bit of Ysera in the sun");
        table.insert(danceLines, "A little bit of Onyxia all night long");
        table.insert(danceLines, "A little bit of Ashvane here I am");

        table.insert(danceLines, "A little bit of Xal'atath in my life");
        table.insert(danceLines, "A little bit of Chromie's all I need");
        table.insert(danceLines, "A little bit of Talanji's what I see");
    end

    if (playerGender == "female") then
        table.insert(danceLines,
            "I'm a ${playerRace}, I'm a lover, I'm a child, I'm a mother, I'm a sinner, I'm a saint, I do not feel ashamed.");

        -- all horde rces
        if (playerRace == "Tauren" or playerRace == "Highmountain Tauren" or playerRace == "Scourge"
                or playerRace == "Undead" or playerRace == "Troll" or playerRace == "Zandalari Troll" or playerRace == "Orc"
                or playerRace == "Mag'har" or playerRace == "Goblin" or playerRace == "Blood Elf" or playerRace == "Nightborne"
                or playerRace == "Vulpera") then
            -- all horde male leaders
            table.insert(danceLines, "A little bit of Theron in my life");
            table.insert(danceLines, "A little bit of Vol'Jin by my side");
            table.insert(danceLines, "A little bit of Thrall's all I need");
            table.insert(danceLines, "A little bit of Bain's what I see");
            table.insert(danceLines, "A little bit of Jorin in the sun");
            table.insert(danceLines, "A little bit of Garrosh all night long");
            table.insert(danceLines, "A little bit of Rommath here I am");

            table.insert(danceLines, "A little bit of Drek'Thar in my life");
            table.insert(danceLines, "A little bit of Aedelea by my side");
            table.insert(danceLines, "A little bit of Cairn's all I need");
            table.insert(danceLines, "A little bit of Gazlowe's what I see");
            table.insert(danceLines, "A little bit of Rexxar in the sun");
            table.insert(danceLines, "A little bit of Lor'themar all night long");
            table.insert(danceLines, "A little bit of Malfurion all night long");
            table.insert(danceLines, "A little bit of Gallywix here I am");
            table.insert(danceLines, "A little bit of Noggenfogger by my side");
            table.insert(danceLines, "A little bit of Kiro's what I see");
        end

        -- all alliance factions
        if (
                playerRace == "Pandaren" or playerRace == "Mechagnome" or playerRace == "Gnome" or playerRace == "Dwarf" or playerRace == "Night Elf" or playerRace == "Worgen"
                or playerRace == "Gilnean"
                or playerRace == "Draenei" or playerRace == "Void Elf" or playerRace == "Lightforged Draenei" or playerRace == "Kul Tiran" or playerRace == "Human" or playerRace == "Dark Iron Dwarf"
            ) then
            -- all alliance male leaders
            table.insert(danceLines, "A little bit of Anduin in my life");
            table.insert(danceLines, "A little bit of Genn by my side");
            table.insert(danceLines, "A little bit of Velen's all I need");
            table.insert(danceLines, "A little bit of Brann's what I see");
            table.insert(danceLines, "A little bit of Muradin's what I see");
            table.insert(danceLines, "A little bit of Magni in the sun");
            table.insert(danceLines, "A little bit of Malfurion in the sun");
            table.insert(danceLines, "A little bit of Malfurion all night long");
            table.insert(danceLines, "A little bit of Millhouse here I am");

            table.insert(danceLines, "A little bit of Bolvar in my life");
            table.insert(danceLines, "A little bit of Tirion by my side");
            table.insert(danceLines, "A little bit of Varian's all I need");

            table.insert(danceLines, "A little bit of Brann's what I see");
            table.insert(danceLines, "A little bit of Muradin's what I see");
            table.insert(danceLines, "A little bit of Magni in the sun");
            table.insert(danceLines, "A little bit of Malfurion in the sun");
            table.insert(danceLines, "A little bit of Malfurion all night long");
            table.insert(danceLines, "A little bit of Millhouse here I am");
        end

        -- all neutral classes
        if (playerRace == "Pandaren" or playerRace == "Dracthyr" or playerRace == "Earthen") then
            table.insert(danceLines, "A little bit of Shaohao in my life");
            table.insert(danceLines, "A little bit of Azurathel by my side");
            table.insert(danceLines, "A little bit of Flint's all I need");
            table.insert(danceLines, "A little bit of Emberthal's what I see");
            table.insert(danceLines, "A little bit of Cindrethresh's what I see");
        end

        -- other male characters
        table.insert(danceLines, "A little bit of Medivh in my life");
        table.insert(danceLines, "A little bit of Khadgar by my side");
        table.insert(danceLines, "A little bit of Cenarius's all I need");
        table.insert(danceLines, "A little bit of Odyn's what I see");
        table.insert(danceLines, "A little bit of N'Zoth's what I see");
        table.insert(danceLines, "A little bit of Denathrius in the sun");
        table.insert(danceLines, "A little bit of Umbric in the sun");
        table.insert(danceLines, "A little bit of Arthas all night long");
        table.insert(danceLines, "A little bit of Illidan here I am");
        table.insert(danceLines, "A little bit of Kael'Thas in my life");
    end

    -- christmas
    if ((d.month == 12 and d.day == 24) or (d.month == 12 and d.day == 25)) then
        table.insert(danceLines, "All I want for Christmas, is ${targetName}!");
    end

    -- eastern
    if ((d.month == 4 and d.day == 4) or (d.month == 4 and d.day == 5)) then
        table.insert(danceLines, "I'm all ears for ${targetName}!");
    end

    if (targetClass == "Priest" or targetClass == "Paladin" or targetClass == "Druid" or targetClass == "Evoker" or targetClass == "Shaman") then
        table.insert(danceLines,
            "The ${targetClass} thinks I'm clever 'cause I play guitar, I think ${targetHeShe}'s clever 'cause ${targetHeShe} stops people dying")
    end

    if (playerRace == "Tauren" or playerRace == "Highmountain Tauren") then
        table.insert(danceLines, "I'm a cow{playerGuyGirl}, dead or alive!")
        table.insert(danceLines, "I treat you like milk I’ll do nothing but spoil you.")
    end

    -- Mature content
    if (ExpressYourElfVars.allowMatureContent) then
        table.insert(danceLines,
            "I just want to show ${targetName} off to all of my ${playerRace} friends, make them drool on their chiny, chin, chins.");
        table.insert(danceLines, "Just you, and me, and ${targetName}!");
        table.insert(danceLines, '${targetGuyGirl}, I can thrill you more than any ghost would dare to try');
        table.insert(danceLines, 'Hey ${targetName} love crusader, I want to be your space invader.');
        table.insert(danceLines, "I'm gonna take my ${targetName} to the hotel room.");
        table.insert(danceLines,
            "Hey ${targetName}, We doesn't have much time. My blue jeans is tight, So onto my love rocket, climb");
        table.insert(danceLines,
            "${targetName} is an easy lover, ${targetHeShe}'ll take your armor but you won't feel it")
        table.insert(danceLines,
            "Hey hey, ${targetName} ${targetName}, I don't like your ${oppositeBfGf}. Hey hey, ${targetName} ${targetName}, I think you need a new one.");


        if (playerGender == "male") then
            table.insert(danceLines,
                "Told ${targetHisHer} beauty is why God invented eyeballs, And ${targetHisHer} booty is why God invented my balls.")
        end

        if (targetClass == "Mage") then
            table.insert(danceLines, "${targetName} is as cold as ice, {targetHeShe}'s willing to sacrifice our love.");
        end
    end

    -- randomize result
    pickedLine = danceLines[fastrandom(1, #danceLines)]

    return ExpressYourElf.Helpers.parseText(
        getRandomPrefix() .. pickedLine,
        {
            playerName = playerName,
            playerGender = playerGender,
            playerClass = playerClass,
            playerRace = playerRace,
            playerLevel = playerLevel,
            playerGuyGirl = playerGuyGirl,
            playerHeShe = playerHeShe,
            playerHimHer = playerHimHer,
            playerHisHer = playerHisHer,
            playerSirMam = playerSirMam,
            playerManWoman = playerManWoman,
            targetName = targetName,
            targetGender = targetGender,
            targetClass = targetClass,
            targetRace = targetRace,
            targetLevel = targetLevel,
            targetGuyGirl = targetGuyGirl,
            targetHeShe = targetHeShe,
            targetHimHer = targetHimHer,
            targetHisHer = targetHisHer,
            targetSirMam = targetSirMam,
            targetManWoman = targetManWoman,
            playerSex = playerSex,
            oppositeSex = oppositeSex,
            oppositeBfGf = oppositeBfGf,
            randomWorld = randomWorld,
            zoneName = zoneName,
        }
    )
end

function ExpressYourElf.DanceWithMe.run()
    -- init
    local targetName, targetGender, targetClass, targetRace, targetLevel, targetHisHer, targetHeShe, targetHimHer, targetSirMam, targetGuyGirl, targetManWoman;
    local playerName, playerGender, playerClass, playerRace, playerLevel, playerHisHer, playerHeShe, playerHimHer, playerSirMam, playerGuyGirl, playerManWoman;

    -- asign
    playerName, playerGender, playerClass, playerRace, playerLevel = ExpressYourElf.Helpers.GetPlayerInformation()
    playerHisHer                                                   = string.lower(ExpressYourElf.Helpers.GetHisHer(
        playerGender))
    playerSirMam                                                   = string.lower(ExpressYourElf.Helpers.GetSirMam(
        playerGender))
    playerGuyGirl                                                  = string.lower(ExpressYourElf.Helpers
        .GetGuyGirl(playerGender))
    playerManWoman                                                 = string.lower(ExpressYourElf.Helpers
        .GetManWoman(
            playerGender))
    playerHeShe                                                    = string.lower(ExpressYourElf.Helpers.GetHeShe(
        playerGender))
    playerHimHer                                                   = string.lower(ExpressYourElf.Helpers.GetHimHer(
        playerGender))

    if (UnitName("target") and UnitPlayerControlled("target")) then
        targetName, targetGender, targetClass, targetRace, targetLevel = ExpressYourElf.Helpers.GetTargetInformation()
        targetHisHer                                                   = string.lower(ExpressYourElf.Helpers.GetHisHer(
            targetGender))
        targetHeShe                                                    = string.lower(ExpressYourElf.Helpers.GetHeShe(
            targetGender))
        targetHimHer                                                   = string.lower(ExpressYourElf.Helpers.GetHimHer(
            targetGender))
        targetSirMam                                                   = string.lower(ExpressYourElf.Helpers.GetSirMam(
            targetGender))
        targetGuyGirl                                                  = string.lower(ExpressYourElf.Helpers.GetGuyGirl(
            targetGender))
        targetManWoman                                                 = string.lower(ExpressYourElf.Helpers.GetManWoman(
            targetGender))
    end

    -- get random phrases
    if (UnitName("target") and UnitPlayerControlled("target")) then
        local lyrics = getTargetMessage(
            playerName,
            playerGender,
            playerClass,
            playerRace,
            playerLevel,
            playerGuyGirl,
            playerHeShe,
            playerHimHer,
            playerHisHer,
            playerSirMam,
            playerManWoman,
            targetName,
            targetGender,
            targetClass,
            targetRace,
            targetLevel,
            targetGuyGirl,
            targetHeShe,
            targetHimHer,
            targetHisHer,
            targetSirMam,
            targetManWoman
        )
        SendChatMessage(lyrics);
    else
        local lyrics = getPlayerMessage(
            playerName,
            playerGender,
            playerClass,
            playerRace,
            playerLevel,
            playerGuyGirl,
            playerHeShe,
            playerHimHer,
            playerHisHer,
            playerSirMam,
            playerManWoman
        )

        local emotes = {
            'DANCE'
        }

        if (lyrics ~= nil) then
            local randomEmote = emotes[fastrandom(1, #emotes)]

            DoEmote(randomEmote, "")
            SendChatMessage(lyrics, "SAY", nil, index)
        end
    end
end
