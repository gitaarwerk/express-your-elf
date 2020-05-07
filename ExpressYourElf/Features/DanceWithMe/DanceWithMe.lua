-- init
ExpressYourElf.DanceWithMe = {}

ExpressYourElf.DanceWithMe.list = {
    'Hey love crusader, I want to be your space invader',
    'Tom bo li de se de moi ya, yeah jambo jambo',
    'Are we ${race}, or are we dancers'
}

ExpressYourElf.DanceWithMe.listWithTarget = {
    'Are we ${race} or are we dancers',
    '${name}, dance with me baby!',
    '${hisHer} name was ${name}, ${heShe} was a ${showGuyGirl}',
    'Hey ${name} love crusader, I want to be your space invader',
    "I'm gonna take my ${name} to the hotel room"
}

function ExpressYourElf.DanceWithMe.getPlayerMessages(name, gender, class, race, level)
    local parsedList = {}

    for i, line in pairs(ExpressYourElf.DanceWithMe.list) do
        parsedList[i] = ExpressYourElf.Helpers.parseText(
            line,
            {
                name = name,
                gender = gender,
                class = class,
                race = race,
                level = level
            }
        )
    end

    return parsedList
end

function ExpressYourElf.DanceWithMe.getTargetMessages(name, gender, class, race, level, hisHer, heShe, showGuyGirl)
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
                showGuyGirl = showGuyGirl
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
    local targetShowGuyGirl = ExpressYourElf.Helpers.GetShowGuyGirl(targetGender)

    -- format lines
    local targetMessages = ExpressYourElf.DanceWithMe.getTargetMessages(targetName, targetGender, targetClass, targetRace, targetLevel, targetHisHer, targetHeShe, targetShowGuyGirl)
    local playerMessages = ExpressYourElf.DanceWithMe.getPlayerMessages(playerName, playerGender, playerClass, playerRace, playerLevel)

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

print('loaded module: dancing')