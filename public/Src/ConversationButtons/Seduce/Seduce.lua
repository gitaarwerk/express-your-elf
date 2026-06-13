-- init

ExpressYourElf.Seduce = {}
local Class = ExpressYourElf.Constants.Class
local Race  = ExpressYourElf.Constants.Race

function ExpressYourElf.Seduce.GetRandomPrefix()
  local prefix =
    {
      "${targetName}, ",
      "Hey ${targetName}. ",
      "Hey there ${targetName}! ",
      "Hey ${targetName}, baby! ",
      "${targetName}, baby, ",
      "${targetName}, honey, ",
      "Hi ${targetName}, ",
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
  local d = C_DateAndTime.GetCalendarTimeFromEpoch(1e6 * 60 * 60 * 24)

  -- common
  local pickedLine
  local seduceLines =
    {
      "My name is ${playerName} - a ${playerManWoman} of the Universe. A popular ${targetGuyGirl} like you is going to need some wooing.",
      "Just say yes now and I won’t have to spike your drink",
      "You remind me of my uncle, we should get it on!",
      "You could never be ice cream because you`re so hot...and ${targetRace}",
      "I think you're suffering from a lack of vitamin me.",
      "Nice tabard, can I talk you out of it?",
      "You’re pretty. I bet you have a pretty scream...",
      "People call me ${playerName}, but you can call me tonight.",
      "What are you raiding tonight? Well, besides me, of course.",
      "I heard you like bad ${playerGuyGirl}. Well, I’m bad at everything.",
      "You can be my Dungeon Master any night.",
      "Just you, and me, and ${targetName}!",
      "I bet you didn’t feel me lick your ear.",
      "When you look out your window tonight, you might catch a glimpse of me.",
      "The War Within is a great game, but I prefer the war within your pants.",
      "BITTY!!",
      "You look comfortable to sit on",
      "Nice neck you’ve got there",
    }

  if (playerGender == "male" and targetGender == "male") then
    table.insert(seduceLines, "I want to see you parry mine, and then I'll parry yours.")
  end

  if (targetGender == "female") then
    table.insert(seduceLines, "I'd love to explore your wetlands.")
    table.insert(seduceLines, "I'd love to raid your Ruby Sanctum.")
  end
  -- from
  if (playerClass == Class.Warlock or playerClass == Class.DemonHunter) then
    table.insert(
      seduceLines,
      "I want you all to myself, You’re my fel juice I would like to drink more of."
    )
  end

  if (playerRace == Race.Worgen or playerRace == Race.Gilnean) then
    table.insert(
      seduceLines,
      "I'm a werewolf, but I'm not the only one who's going to be howling tonight."
    )
    table.insert(
      seduceLines,
      "Did you know, a worgen always brings ${playerHisHer} pack with ${playerHimHer}?"
    )
  end

  if (playerRace == Race.Gilnean) then
    table.insert(seduceLines, "What may surprise you, I'm a beast when I'm onto you.")
  end

  if (playerRace == Race.Worgen or playerRace == Race.Tauren or playerRace == Race.Vulpera or playerRace == Race.Pandaren or playerRace == Race.HighmountainTauren) then
    table.insert(
      seduceLines,
      "If being a furry in ${randomWorld} is wrong, You can also keep me as your favourite pet!"
    )
  end

  if (playerRace == Race.Vulpera) then
    table.insert(seduceLines, "My face is long and shallow, one of my great assets")
  end

  if (playerClass == Class.Warlock) then
    table.insert(seduceLines, "I would flirt with you, but I’d rather seduce you with my succubus.")
    table.insert(
      seduceLines,
      "If you click my portal, it will get you sucked through the Celestial Plane right into my room."
    )
  end

  if (playerClass == Class.Shaman) then
    table.insert(
      seduceLines,
      "If i could learn any new spell, it would be a love totem to entangle you."
    )
  end

  if (playerClass == Class.Paladin) then
    table.insert(seduceLines, "Do you feel it? And that just my Devotion Aura.")
    table.insert(seduceLines, "I have plenty protection with me.")
    table.insert(seduceLines, "I sure must be a paladin, because I wanna lay my hands on you.")
  end

  if (playerClass == Class.Paladin or playerClass == Class.Warrior or playerClass == Class.DeathKnight) then
    table.insert(seduceLines, "Wanna wield a broadsword tonight?")
  end

  if (playerClass == Class.Priest or targetClass == Class.Priest) then
    table.insert(seduceLines, "You taught me a new spell; Power Word: Undress")
  end

  if (playerRace == Race.LightforgedDraenei or playerRace == Race.Draenei) then
    table.insert(seduceLines, "You have dirt on your face. Let me wipe it with my tail.")
  end

  if (playerGender == "male" and (playerClass == Class.Warrior or playerClass == Class.Paladin or playerClass == Class.DemonHunter or playerClass == Class.DeathKnight or playerRace == Race.Mechagnome)) then
    table.insert(seduceLines, "My armor is bending just by looking at you!")
  end

  if (playerClass == Class.Druid) then
    table.insert(seduceLines, "Did you know I'm a beast?")
  end

  if (playerClass == Class.Druid and playerGender == "male") then
    table.insert(seduceLines, "Want to touch my Staff of Rampant Growth?")
    table.insert(seduceLines, "I have something hidden between all this hair.")
  end

  if (targetClass == Class.Druid and targetGender == "male") then
    table.insert(seduceLines, "Want to touch your Staff of Rampant Growth")
  end

  if (targetRace == Race.Goblin) then
    table.insert(seduceLines, "Treat me like a pirate and give me that booty.")
  end

  if (playerRace == Race.Goblin and playerGender == "male") then
    table.insert(seduceLines, "I'm no Kobald, but you can take my candle anytime!")
  end

  if ((playerRace == Race.Goblin or targetRace == Race.Goblin) and playerGender == "female" and targetGender == "female") then
    table.insert(seduceLines, "Scissor me timbers!")
  end

  if (playerGender == "male" and targetGender == "male") then
    table.insert(seduceLines, "Do ya wanna grind something else?")
  end

  if (playerRace == Race.Goblin or playerRace == Race.Gnome or playerRace == Race.Mechagnome) then
    table.insert(
      seduceLines,
      "Ride with me away. We doesn't have much time. My legging are tight. So onto my love rocket, climb."
    )
    table.insert(seduceLines, "If we mixed together, would we go bang, bang!")
  end

  if (playerRace == Race.ZandalariTroll or playerRace == Race.Troll) then
    table.insert(seduceLines, "Don't jinx it and do some crazy voodoo with me.")
  end

  if (playerGender == "female") then
    table.insert(
      seduceLines,
      "You can eat my skittles. It's the sweetest in the middle. Pink is the flavor. Solve the riddle."
    )
  end

  if (playerClass == Class.Mage) then
    table.insert(seduceLines, "Want to see my magic wand?")
    table.insert(
      seduceLines,
      "I blast off your clothes with my pyroblast, and freeze you so i can handle you."
    )
  end

  -- to
  if (targetClass == Class.Druid) then
    table.insert(seduceLines, "I've heard that you are an Epic mount.")
    table.insert(
      seduceLines,
      "Are you in Sea Lion form? Because I can sea you Lion in my bed tonight."
    )
  end

  if (targetClass == Class.Mage and targetGender == "male") then
    table.insert(seduceLines, "I may not be a wizard, but I’m still looking for a new staff.")
  end

  if (targetClass == Class.Druid and playerClass == Class.Hunter) then
    table.insert(seduceLines, "Feeling wild? That's okay. I have a talent in [Handle Animal].")
  end

  if (targetClass == Class.Priest and targetGender == "female" and playerGender == "male") then
    table.insert(
      seduceLines,
      "You must be Sally Whitemane, because you just made my champion arise!"
    )
  end

  if (targetClass == Class.DemonHunter) then
    table.insert(seduceLines, "Would you ever go full fel on me?")
    table.insert(seduceLines, "Have you ever thought of the idea I would be your succubus?")
  end

  if (targetRace == Class.DemonHunter and playerGender == "male") and targetGender == "female" then
    table.insert(
      seduceLines,
      "Have you ever thought of the idea I would be fine you being my succubus?"
    )
  end

  if (targetRace == Race.NightElf or targetRace == Race.VoidElf or targetRace == Race.BloodElf or targetRace == Race.Nightborne or targetRace == Race.Haranir) then
    table.insert(seduceLines, "No bush is too big for me.")
  end

  if (targetRace == Race.Vulpera) then
    table.insert(
      seduceLines,
      "Foxy ${targetPoppaMomma}, You smell kinda pretty. Wanna smell me? Hoo-hah!"
    )
  end

  if (targetClass == Class.Rogue) then
    table.insert(seduceLines, "You don’t need [Confusion] to drive me crazy.")
    table.insert(seduceLines, "I hope you built up that energy to have a go at me.")
  end

  if (targetClass == Class.Warrior) then
    table.insert(seduceLines, "Are you a barbarian? 'Cuz I like your rage.")
    table.insert(
      seduceLines,
      "Uh… greetings, traveler. Is it warm in here, or did you just pop Bloodlust?"
    )
  end

  if (targetClass == Class.Priest) then
    table.insert(seduceLines, "You don’t need [Mind Control] to get me to do things.")
    table.insert(seduceLines, "Do you take confessions? Because I have many to tell about you.")
  end

  if (targetClass == Class.Priest or targetClass == Class.Paladin) then
    table.insert(seduceLines, "Is it hot in here? Or is it the holy spirit burning inside you?")
  end

  if (targetClass == Class.Warlock) then
    table.insert(seduceLines, "Talk Demonic to me!")
    table.insert(seduceLines, "I don't mind when your imps are looking at us.")
    table.insert(seduceLines, "Why don't you seduce me? My resistance is low.")
  end

  if (targetClass == Class.Priest or targetClass == Class.Paladin or targetClass == Class.Monk or targetClass == Class.Warlock or targetClass == Class.Mage) then
    table.insert(
      seduceLines,
      "They say that you have spells of love, so would you mind starting to cast one on me?"
    )
  end

  if (targetClass == Class.Warrior or targetClass == Class.Paladin or targetClass == Class.DemonHunter or targetClass == Class.DeathKnight) then
    table.insert(seduceLines, "Wanna explore fifty shades of plate with me?")
  end

  if (playerClass == Class.Rogue and targetClass == Class.Rogue) then
    table.insert(seduceLines, "Let us have only leather stand between our love.")
  end

  if (playerRace == Race.NightElf and targetGender == "female") then
    table.insert(seduceLines, "I'm not a Night Elf, but I'd like to dance on your moonwell.")
  end

  if (playerRace == Race.Haranir and targetRace == Race.NightElf) then
    table.insert(seduceLines, "I'm much more experienced than your brethren.")
    table.insert(
      seduceLines,
      "I have a lot of experience with Night Elves, so I can show you how to use your ears in a more... versatile way."
    )
  end

  if (playerRace == Race.Earthen) then
    table.insert(
      seduceLines,
      "Sticks and bones may won't break my stones, But whips and chains excite me. So tie me down and hurt me, To show me that you like me."
    )
    if (playerGender == "male") then
      table.insert(
        seduceLines,
        "I don't have any bones, but whatever you touch, it'll be rock hard."
      )
    end
  end

  if (playerRace == Race.BloodElf) then
    table.insert(seduceLines, "You and me will corrupt the Sunwell for sure.")
  end

  if (not playerRace == Race.BloodElf) then
    table.insert(seduceLines, "I'm not a blood elf, but I can make you bleed.")
  end

  if (targetRace == Race.Earthen) then
    table.insert(seduceLines, "I will make you scream in both minor and major scales.")
  end

  if (targetRace == Race.Dracthyr) then
    table.insert(seduceLines, "You have just the right tongue and teeth.")
  end

  if (playerRace == Race.Dracthyr and targetRace == Race.Earthen) then
    table.insert(seduceLines, "I will make you rock in both minor and major scales.")
  end

  -- Oh no, too soon!
  if (playerClass == Class.Priest and targetLevel < 18) then
    print("You should wait with flirting until ${targtName} is higher than level 18! ;-)")
    return nil
  end

  -- eastern
  if (d.month == 4 and d.day == 12) then
    table.insert(seduceLines, "I'm not the Easter Bunny, but I can still make you hop.")
    table.insert(
      seduceLines,
      "You're like a delicious Easter egg. I want to find out what's inside."
    )
  end

  --christmas
  if ((d.month == 12 and d.day == 24) or (d.month == 12 and d.day == 25)) then
    table.insert(seduceLines, "I'm not Santa, but I can still make you ho-ho-ho.")
  end

  -- valentine
  if ((d.month == 2 and d.day == 13) or (d.month == 2 and d.day == 14)) then
  end

  -- eastern
  if ((d.month == 4 and d.day == 4) or (d.month == 4 and d.day == 5)) then
    if (
      playerClass == Class.Druid 
      or playerRace == Race.Vulpera 
      or playerRace == Race.Tauren 
      or playerRace == Race.Gilnean
    or playerRace == Race.Worgen
  or playerRace == Race.HighmountainTauren
) then
    table.insert(seduceLines, "If you hand me some bunny ears, you can hunt for my eggs all night long.")
    end
  end

  -- halloween
  if ((d.month == 10 and d.day == 30) or (d.month == 10 and d.day == 31)) then
    if (targetGender == "male") then
    table.insert(seduceLines, "I'll make you scream like the Headless Horseman")
    end
  end

    -- New Year's Day
  if (d.month == 1 and d.day == 1) then  end

  -- Epiphany / Three Kings' Day
  if (d.month == 1 and d.day == 6) then  end

  -- Valentine's Day
  if (d.month == 2 and d.day == 14) then  end

  -- International Women's Day
  if (d.month == 3 and d.day == 8) then  end

  -- St. Patrick's Day
  if (d.month == 3 and d.day == 17) then  end

  -- April Fools' Day
  if (d.month == 4 and d.day == 1) then  end

  -- Earth Day
  if (d.month == 4 and d.day == 22) then  end

  -- International Workers' Day / May Day
  if (d.month == 5 and d.day == 1) then  end

  -- Star Wars Day
  if (d.month == 5 and d.day == 4) then  end

  -- Pride Day
  if (d.month == 6 and d.day == 28) then  end

  -- Independence Day (US)
  if (d.month == 7 and d.day == 4) then  end

  -- Bastille Day (France)
  if (d.month == 7 and d.day == 14) then  end

  -- International Cat Day
  if (d.month == 8 and d.day == 8) then  end

  -- Halloween
  if (d.month == 10 and d.day == 31) then  end

  -- Guy Fawkes Night (UK)
  if (d.month == 11 and d.day == 5) then  end

  -- Remembrance Day / Veterans Day
  if (d.month == 11 and d.day == 11) then  end

  -- Thanksgiving (US, ~4th Thursday of November)
  if (d.month == 11 and d.day >= 22 and d.day <= 28) then  end

  -- New Year's Eve
  if (d.month == 12 and d.day == 31) then  end


  -- randomize result
  pickedLine = ExpressYourElf.RandomizeUtil.GetRandomized("seduce", seduceLines, targetName)

  local parsedLine = ExpressYourElf.Helpers.parseText(
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
      randomWorld = randomWorld,
    }
  )

  if #parsedLine > 254 then
    ExpressYourElf.RandomizeUtil.ResetContext("seduce")
    return ExpressYourElf.Seduce.GetMessage(
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
  end

  return parsedLine
end

function ExpressYourElf.Seduce.run()
  if (UnitName("target") and UnitPlayerControlled("target")) then
    local playerName, playerGender, playerClass, playerRace, playerLevel =
      ExpressYourElf.Helpers.GetPlayerInformation()
    local targetName, targetGender, targetClass, targetRace, targetLevel =
      ExpressYourElf.Helpers.GetTargetInformation()

    local playerGuyGirl = ExpressYourElf.Helpers.GetGuyGirl(playerGender)
    local playerManWoman = ExpressYourElf.Helpers.GetManWoman(playerGender)
    local targetGuyGirl = ExpressYourElf.Helpers.GetGuyGirl(targetGender)
    local targetManWoman = ExpressYourElf.Helpers.GetManWoman(targetGender)
    local targetPoppaMomma = ExpressYourElf.Helpers.GetPoppaMomma(targetGender)
    local playerHimHer = ExpressYourElf.Helpers.GetHimHer(playerGender)
    local targetHimHer = ExpressYourElf.Helpers.GetHimHer(targetGender)

    local seduceLine =
      ExpressYourElf.Seduce.GetMessage(
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

    local emotes =
      {
        "FLIRT",
        "KISS",
        "LAYDOWN",
        "LICK",
        "LOVE",
        "MASSAGE",
        "PURR",
        "SEXY",
        "SNIFF",
        "CUDDLE",
        "TEASE",
        "SCRATCH",
        "POUNCE",
      }

    if (seduceLine ~= nil) then
      local randomEmote = emotes[fastrandom(1, #emotes)]

      DoEmote(randomEmote, "")
      C_ChatInfo.SendChatMessage(seduceLine, "SAY", nil, index)
    end
  end
end
