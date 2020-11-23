-- init

ExpressYourElf.DanceWithMe = {}

ExpressYourElf.DanceWithMe.list = {
    'Tom bo li de se de moi ya, yeah jambo jambo.',
    'Are we ${race}, or are we dancers.',
    "Beats so big I'm stepping on gnomes.",
    "TELL ME WHY!?, I don't like Argus... TELL ME WHY!? I don't like Argus",
    "My ${race} hips don't lie.",
    "Oh, baby, when you talk like that, you make a ${race} go mad.",
    "Is this the real life? Is this just fantasy?",
    "${race} ${girlBoy}s, we're so unforgettable. Tiny bracers and tabards on top! Fel-kissed skin, so hot we'll melt your armor! Ooh oh ooh, Ooh oh ooh!",
    "It's murder on the dungeon floor. But you'd better not steal the moves. Yhea Yhea! Boss' gonna burn this dungeon down right now!",
    "Like a ${race}, raiding for the very first time",
    "They're out to get you, there's demons closing in on every side. That this is thriller, thriller night!",
    "What you gon' do with all that junk? All that junk inside that trunk? I'ma get, get, get, get, you drunk, Get you love drunk off my hump. My hump my hump my hump my hump my hump",
    "I just want to show you off to all of my ${race}s friends, make them drool on their chiny, chin, chins.",
    "Lack toes, intolerant. It sucks when you can't stand! Lack toes, intolerant. Anything, when you can't stand!",
    "We don't like it on this chair. We dont like it on these stairs. We don't like it on her skirt. Mommy's hair drives daddy nuts. He even found it in his butt. But he gets sad when it gets cut. Where should her hair be instead? We like her hair up on her head.",
    "No one knows I'm cool. They all think I'm a fool. Just because I drool. And I like my pocket pool.",
    "Silithus gel, I think it's swell. It tastes just like chicken. And when you get sickened. It makes you feel well.",
    "Poopy-di scoop. Scoop-diddy-whoop. Whoop-di-scoop-di-poop!"
}


ExpressYourElf.DanceWithMe.listWithTarget = {
    'Are we ${race} or are we dancers.',
    '${name}, dance with me baby!',
    '${hisHer} name was ${name}, ${heShe} was a show ${guyGirl}.',
    'Hey ${name} love crusader, I want to be your space invader.',
    "I'm gonna take my ${name} to the hotel room.",
    "So, ${name} are you ok, are you ok ${name}?",
    "${guyGirl}, I can thrill you more than any ghost would dare to try"
}

function ExpressYourElf.DanceWithMe.getPlayerMessages(name, gender, class, race, level, girlBoy)
    local parsedList = {}

    for i, line in pairs(ExpressYourElf.DanceWithMe.list) do
        parsedList[i] = ExpressYourElf.Helpers.parseText(
            line,
            {
                name = name,
                gender = gender,
                class = class,
                race = race,
                level = level,
                girlBoy = girlBoy
            }
        )
    end

    return parsedList
end

function ExpressYourElf.DanceWithMe.getTargetMessages(name, gender, class, race, level, hisHer, heShe, guyGirl)
    local parsedList = {}

    for i, line in pairs(ExpressYourElf.DanceWithMe.listWithTarget) do
        parsedList[i] = ExpressYourElf.Helpers.parseText(
            line,
            {
                name = name,
                gender = gender,
                class = class,
                race = race,
                level = level,
                hisHer = hisHer,
                heShe = heShe,
                guyGirl = guyGirl
            }
        )
    end

    return parsedList
end


function ExpressYourElf.DanceWithMe.run()
    -- Obtain all vars
    local list = {}
    local playerName, playerGender, playerClass, playerRace, playerLevel  = ExpressYourElf.Helpers.GetPlayerInformation()
    local targetName, targetGender, targetClass, targetRace, targetLevel  = ExpressYourElf.Helpers.GetTargetInformation()

    local targetHisHer = ExpressYourElf.Helpers.GetHisHer(targetGender)
    local targetHeShe = ExpressYourElf.Helpers.GetHeShe(targetGender)
    local playerGuyGirl = ExpressYourElf.Helpers.GetGuyGirl(playerGender)
    local targetGuyGirl = ExpressYourElf.Helpers.GetGuyGirl(targetGender)

    -- format lines
    local playerMessages = ExpressYourElf.DanceWithMe.getPlayerMessages(playerName, playerGender, playerClass, playerRace, playerLevel, playerGuyGirl)
    local targetMessages = ExpressYourElf.DanceWithMe.getTargetMessages(targetName, targetGender, targetClass, targetRace, targetLevel, targetHisHer, targetHeShe, targetGuyGirl)

    -- get random number
    if(UnitName("target") and UnitPlayerControlled("target")) then
        list = ExpressYourElf.Helpers.mergeTable(playerMessages, targetMessages)
    else
        -- merge tables
        list = playerMessages
    end

    SendChatMessage(list[math.random(1, #list)], "SAY", nil, index);
    DoEmote("DANCE", "");
end
