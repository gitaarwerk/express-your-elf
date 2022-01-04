-- init
ExpressYourElf.Battleshout = {}

function ExpressYourElf.Battleshout.GetMessage(
    playerName,
    playerGender,
    playerClass,
    playerRace,
    playerLevel,
    playerManWoman,
    playerGuyGirl
)
    -- common
    local pickedLine
    local listOfPhrases = {
        'SPOON!!!!',
        'NOT IN THE FACE!, NOT IN THE FACE!',
        -- "Tulta munille!",
        "Leeeroy Jennnkins!",
        --"I am the Love Angel, I am Wedding Peach, and I am very angry with you!",
        "Oorah!",
        --"Barritus!",
        "Quick, while the First Ones aren't watching!",
        "Everybody aim for that one guy on the left!",
        -- "Cake or Death!",
        -- "Uulwi ifis halahs gag erh'ongg w'ss!",
        "Mrggllggllggll!",
        "FOR KING AND COUNTRY!",
        "FOR GNOMEREGAN!"
    }

    
    if (playerRace == "Gnome" or playerRace == "Mechagnome") then
        table.insert(listOfPhrases, "For gnomeregan!")
    end

    -- randomize result
    pickedLine = listOfPhrases[fastrandom(1, #listOfPhrases)]

    return ExpressYourElf.Helpers.parseText(
        pickedLine,
        {
            playerName = playerName,
            playerGender = playerGender,
            playerClass = playerClass,
            playerRace = playerRace,
            playerLevel = playerLevel,
            playerManWoman = playerManWoman,
            playerGuyGirl = playerGuyGirl
        }
    )
end


function ExpressYourElf.Battleshout.run()
    local playerName, playerGender, playerClass, playerRace, playerLevel = ExpressYourElf.Helpers.GetPlayerInformation()

    local playerGuyGirl = ExpressYourElf.Helpers.GetGuyGirl(playerGender)
    local playerManWoman = ExpressYourElf.Helpers.GetManWoman(playerGender)
    local pickedLine = ExpressYourElf.Battleshout.GetMessage(
        playerName,
        playerGender,
        playerClass,
        playerRace,
        playerLevel,
        playerManWoman,
        playerGuyGirl
    )

    local emotes = {
        'CHARGE'
    }

    if (pickedLine ~= nil) then
        local randomEmote = emotes[fastrandom(1, #emotes)];

        DoEmote(randomEmote, "");            
        SendChatMessage(pickedLine, "SAY", nil, index);
    end
end
