-- init

ExpressYourElf.DanceWithMe = {}

ExpressYourElf.DanceWithMe.list = {
    'Hey love crusader, I want to be your space invader!',
    'Tom bo li de se de moi ya, yeah jambo jambo.',
    'Are we ${race}, or are we dancers.',
    "Beats so big I'm stepping on gnomes.",
    "TELL ME WHY!?, I don't like Argus... TELL ME WHY!? I don't like Argus",
    "My ${race} hips don't lie.",
    "Oh, baby, when you talk like that, you make a ${race} go mad.",
    "Is this the real life? Is this just fantasy?",
    "${race} ${girlBoy}s, we're so unforgettable. Tiny bracers and tabards on top! Fel-kissed skin, so hot we'll melt your armor! Ooh oh ooh, Ooh oh ooh!",
    "It's murder on the dungeon floor. But you'd better not steal the moves. Yhea Yhea! Boss' gonna burn this dungeon down right now!",
    "Like a ${race}, raiding for the very first time"
}

ExpressYourElf.DanceWithMe.listWithTarget = {
    'Are we ${race} or are we dancers.',
    '${name}, dance with me baby!',
    '${hisHer} name was ${name}, ${heShe} was a show ${guyGirl}.',
    'Hey ${name} love crusader, I want to be your space invader.',
    "I'm gonna take my ${name} to the hotel room.",
    "So, ${name} are you ok, are you ok ${name}?"
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
