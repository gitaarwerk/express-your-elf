-- init

ExpressYourElf.Compliment = {}
local Class = ExpressYourElf.Constants.Class
local Race = ExpressYourElf.Constants.Race

function ExpressYourElf.Compliment.GetRandomPrefix(targetName)
  local prefix =
    { "${targetName}, ", "Hey ${targetName}. ", "Hey there ${targetName}! ", "Hi ${targetName}, " }

  return ExpressYourElf.RandomizeUtil.GetRandomized("compliment_prefix", prefix, targetName)
end

function ExpressYourElf.Compliment.GetMessage(
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
  -- dateFormat
  local rawTime = date("*t")
  local d = {
    day = rawTime.day,
    month = rawTime.month,
    year = rawTime.year,
  }

  local zoneName = GetZoneText()
  local playerSex = "girls"
  local oppositeSex = "boys"

  if (playerGender == "male") then
    oppositeSex = "girls"
    playerSex = "boys"
  end
  -- common
  local pickedLine

  local ComplimentLines =
    {
      "Your right cheek looks very well today!",
      "Your tiny little hands that are good for violin. Perhaps just bad for strangling someone to death.",
      "I like the way how your legs move when you walk.",
      "You have a very nice nose. It's very... nose-like.",
      "You smell like a freshly baked mana biscuit.",
      "You've gotta have the most creamy cheeks in all of Azeroth!",
      "Your voice is as soothing as a Pandaren lullaby.",
      "Your laugh is more infectious than the Plague of Undercity.",
      "You have the wisdom of a thousand ancient scrolls.",
      "You are my example of what a possible hero could be, if I'm not mistaken",
      "Your oral cavity is wonderful to work with.",
      "You have a cool left ear.",
      "You have a striking face.",
      "Your handwriting suits your personality.",
      "I like the way you smile when I give you 1 gold.",
      "You smell like a rainbow just out of the dryer!",
      "I like that shirt because it makes you look stronger than I know you really are.",
      "You're like a giant, albino gorilla!",
      "Your tonsils look quite lovely! If only you had tonsillitis so I could keep them as a medical specimen for my office!",
      "I love how you move your elbows. It's like you're a professional elbow mover!",
      "Your oral cavity is wonderful to work with.",
    }

  -- The greeters guild
  table.insert(ComplimentLines, "I'm enjoying the way you’re enunciating with your hands.")
  table.insert(ComplimentLines, "You’re physically gynamstic with your expression.")
  table.insert(
    ComplimentLines,
    "Don't think I haven’t noticed you tieing your eye color with your armor perfectly."
  )
  table.insert(ComplimentLines, "Thank you for shopping at ${zoneName}, have the best time!")
  table.insert(ComplimentLines, "You are unflinchingly modest!")
  table.insert(ComplimentLines, "You've got a fantastic collage of armor!")

  if (targetClass == Class.Hunter) then
    table.insert(
      ComplimentLines,
      "You're walking into ${zoneName} like a gunslinger from the wild west!"
    )
  end

  -- more contextual

  if (targetGender == "female") then
    table.insert(ComplimentLines, "You look just like that girl from Natural Born Killers!")
    table.insert(ComplimentLines, "My, what a smashing blouse youv've got there!")
    table.insert(ComplimentLines, "You're the prettiest thing I've seen since I left the circus!")
  end

  if (targetClass == Class.Mage) then
    table.insert(ComplimentLines, "You smell like a freshly baked mana biscuit.")
  end

  if (targetRace == Race.Undead or targetRace == Race.Scourge) then
    table.insert(ComplimentLines, "You have a very nice jawline. It's very... jawline-y.")
    table.insert(ComplimentLines, "You have a very nice nose. I wish I had one.")
    table.insert(ComplimentLines, "Your laugh is more infectious than the Plague of Undercity.")
  end

  if (targetRace == Race.Undead or targetRace == Race.Scourge and targetGender == "male") then
    table.insert(ComplimentLines, "You look like Edward from Twilight.")
  end

  if (targetRace == Race.Haranir or targetRace == Race.NightElf or targetRace == Race.VoidElf or targetRace == Race.BloodElf or targetRace == Race.Nightborne) then
    table.insert(ComplimentLines, "I love your eyebrows, they're so...eyebrowy.")
  end

  if (playerGender == "female" and targetGender == "male") then
    table.insert(ComplimentLines, "You are more handsome than my dead husband.")
  end

  if (playerGender == "male" and targetGender == "female") then  end

  -- Self compliment
  if (playerName == targetName) then
    table.insert(ComplimentLines, "You're looking good today!, why thank me!")
    table.insert(ComplimentLines, "You're doing great, keep it up me!")
    table.insert(ComplimentLines, "You're the best, me!")
    table.insert(ComplimentLines, "You're a strong individual. You can do this!")
    table.insert(
      ComplimentLines,
      "You look like you're taking enough vitamins. You certainly have a healthy glow, me!"
    )
    table.insert(ComplimentLines, "Never get's boring to Compliment myself, YHEA ${playerName}!")
  end

  if (targetGender == "male") then
    table.insert(ComplimentLines, "You look kinda like Spock.")
    table.insert(ComplimentLines, "You have really beautiful eyelashes. They're so long!")
  end

  if (targetRace ~= Race.Mechagnome or targetRace ~= Race.Gnome) then
    table.insert(ComplimentLines, "You have the courage of a gnome facing a giant.")
  end

  if (targetRace == Race.Tauren or targetRace == Race.HighmountainTauren or targetRace == Race.Pandaren) then
    table.insert(ComplimentLines, "You are surprisingly nimble.")
  end

  if (playerClass == Class.Hunter) then  end

  if (playerRace == Race.VoidElf or playerClass == Class.Warlock) then  end

  if (playerClass == Class.Warlock) then  end

  if (playerClass == Class.Rogue) then  end

  if (playerClass == Class.Shaman) then  end

  if (playerClass == Class.Paladin) then  end

  if (playerClass == Class.Priest) then  end

  if (playerClass == Class.Warrior) then  end

  if (playerRace == Race.LightforgedDraenei or playerClass == Class.Paladin or playerClass == Class.Priest) then  end

  if (playerGender == "male" and (playerClass == Class.Warrior or playerClass == Class.Paladin or playerClass == Class.DemonHunter or playerClass == Class.DeathKnight or playerRace == Race.Mechagnome)) then  end

  if (playerRace == Race.Mechagnome) then  end

  if (playerClass == Class.DeathKnight or playerRace == Race.Mechagnome) then  end

  if (playerClass == Class.Druid) then  end

  if (targetRace == Race.Goblin) then  end

  if (playerRace == Race.Goblin and playerGender == "male") then  end

  if (playerRace == Race.Goblin or playerRace == Race.Gnome or playerRace == Race.Mechagnome) then  end

  if (playerRace == Race.ZandalariTroll or playerRace == Race.Troll) then  end

  if (playerGender == "female") then  end

  if (playerRace == Race.Dracthyr) then  end

  if (targetRace == Race.Earthen) then  end

  if (targetClass == Class.Warrior) then
    table.insert(ComplimentLines"Your battle stance is as graceful as a dancing murloc.")
  end

  -- to
  if (targetRace == Race.Worgen or targetRace == Race.Gilnean or targetRace == Race.Tauren or targetRace == Race.Vulpera or targetRace == Race.Pandaren or targetRace == Race.HighmountainTauren) then
    table.insert(ComplimentLines, "Your hair is looking combed today!")
  end

  if (targetRace == Race.Worgen or targetRace == Race.Gilnean) then
    table.insert(ComplimentLines, "You have really pretty eyes, like a husky.")
  end

  if (targetRace == Race.Scourge or targetRace == Race.Undead or targetRace == Class.DeathKnight) then
    table.insert(ComplimentLines, "You're looking very alive today!")
  end

  if (targetClass == Class.Druid or targetRace == Race.Dracthyr or targetRace == Race.Tauren or targetRace == Race.HighmountainTauren) then  end

  if (targetClass == Class.Warrior or targetClass == Class.Paladin or targetClass == Class.DeathKnight) then
    table.insert(ComplimentLines, "Your armor shines brighter than a thousand suns!")
  end

  if (targetClass == Class.Druid) then
    table.insert(ComplimentLines, "I really like the cat fur on your sweater.")
    table.insert(
      ComplimentLines,
      "Is it weird to say that you';'re so cool, I would like to keep you as a pet?"
    )
  end

  if (targetClass == Class.Druid and playerClass == Class.Druid) then  end

  if (targetRace == Race.Dracthyr) then  end

  if (targetClass == Class.DemonHunter) then  end

  if (targetRace == Race.NightElf or targetRace == Race.Haranir or targetRace == Race.VoidElf or targetRace == Race.BloodElf or targetRace == Race.Nightborne) then
    table.insert(
      ComplimentLines,
      "The way the moon touches your right ear brings out your true personality!"
    )
  end

  if (targetRace == Race.Vulpera) then  end

  if (targetRace == Race.Draenei and targetRace == Race.LightforgedDraenei) then  end

  if (targetClass == Class.Hunter) then  end

  if (targetClass == Class.Warlock) then  end

  if (targetClass == Class.Priest) then  end

  if ((targetClass == Class.Mage or playerClass == Class.Mage) and not (playerGender == targetGender)) then  end

  if (targetClass == Class.Priest or targetClass == Class.Paladin or targetClass == Class.Monk or targetClass == Class.Warlock or targetClass == Class.Mage) then  end

  if (targetRace == Race.Scourge or targetRace == Race.Undead) then
    table.insert(ComplimentLines, "The way that your left ear decays is very attractive!")
  end

  if (playerClass == Class.Paladin and targetClass == Class.Paladin) then  end

  if (playerRace == Race.Mechagnome) then  end

  if (targetRace == Race.Earthen) then  end

  if (playerRace == Race.Earthen) then  end

  -- christmas
  if ((d.month == 12 and d.day == 24) or (d.month == 12 and d.day == 25)) then
    table.insert(ComplimentLines, "You're the best present I could have asked for!")
    table.insert(ComplimentLines, "You're the best gift I could have gotten!")
    table.insert(ComplimentLines, "You're the best present I could have gotten!")
    table.insert(ComplimentLines, "You're the best gift I could have asked for!")
    table.insert(ComplimentLines, "You're the best present I could have asked for!")
  end

  --eastern
  if (d.month == 4 and d.day == 12) then
    table.insert(ComplimentLines, "You're the best egg I could have found!")
    table.insert(ComplimentLines, "You're the best egg I could have asked for!")
    table.insert(ComplimentLines, "You're the best egg I could have gotten!")
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

  -- Mature content
  if ExpressYourElfVars.allowMatureContent then  end

  -- Add removed flirt lines, that Blizard removed
  if (ExpressYourElfVars.allowMatureContent and ExpressYourElfVars.bringBackRemoved) then
    if (playerRace == Race.BloodElf and playerGender == "female") then  end

    if (playerRace == Class.DemonHunter and playerRace == Race.BloodElf and playerGender == "female") then  end

    if (playerRace == Race.Goblin and playerGender == "female") then  end

    if (playerRace == Race.Goblin and targetGender == "male") then  end

    if (playerRace == Race.Goblin and playerGender == "male") then  end

    if (playerRace == Race.Goblin and playerGender == "male" and targetGender == "female") then  end

    if (playerRace == Race.Orc and playerGender == "male") then  end

    if (playerRace == Race.Tauren and playerGender == "female" and targetGender == "male") then  end

    if (playerRace == Race.Tauren and playerGender == "male" and targetGender == "female") then  end

    if (playerRace == Race.Troll and playerGender == "female") then  end

    if (playerRace == Race.Troll and playerGender == "male") then  end

    if (playerRace == Race.Undead and playerGender == "female") then  end

    if (playerRace == Race.Undead and playerGender == "male") then  end

    if (playerRace == Race.HighmountainTauren and playerGender == "female") then  end

    if (playerRace == Race.HighmountainTauren and playerGender == "male") then  end

    if (playerRace == Race.Nightborne and playerGender == "female" and targetGender == "male") then  end

    if (playerRace == Race.Nightborne and playerGender == "female") then  end

    if (playerRace == Race.Nightborne and playerGender == "male") then  end

    if (playerRace == Race.Draenei and playerGender == "female") then  end

    if (playerRace == Race.Draenei and playerGender == "male") then  end

    if (playerRace == Race.Dwarf and playerGender == "female") then  end

    if (playerRace == Race.Dwarf and playerGender == "male") then  end

    if (playerRace == Race.NightElf and playerGender == "female") then  end

    if (playerRace == Race.NightElf and playerGender == "male") then  end

    if ((playerRace == Race.Worgen or targetRace == Race.Gilnean) and playerGender == "female") then  end

    if ((playerRace == Race.Worgen or targetRace == Race.Gilnean) and playerGender == "male") then  end

    if (playerRace == Race.DarkIronDwarf and playerGender == "male") then  end

    if (playerRace == Race.LightforgedDraenei and playerGender == "female") then  end

    if (playerRace == Race.LightforgedDraenei and playerGender == "female" and targetGender == "male") then  end

    if (playerRace == Race.Mechagnome and playerGender == "female") then  end

    if (playerRace == Race.Pandaren and playerGender == "female") then  end

    if (playerRace == Race.Pandaren and playerGender == "male") then  end
  end

  -- randomize result
  local contextSalt = targetName .. targetGender .. targetClass .. targetRace
  pickedLine =
    ExpressYourElf.RandomizeUtil.GetRandomized("compliment_message", ComplimentLines, contextSalt)

  return ExpressYourElf.Helpers.parseText(
    ExpressYourElf.Compliment.GetRandomPrefix(targetName) .. pickedLine,
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
      zoneName = zoneName,
    }
  )
end

function ExpressYourElf.Compliment.run()
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

    local ComplimentLine =
      ExpressYourElf.Compliment.GetMessage(
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

    local emotes =
      { "AMAZE", "APPLAUD", "BRAVO", "CHEER", "CLAP", "COMMEND", "GLAD", "HAPPY", "LAVISH", "YAY" }

    if (ComplimentLine ~= nil) then
      local randomEmote = emotes[fastrandom(1, #emotes)]

      DoEmote(randomEmote, "")
      C_ChatInfo.SendChatMessage(ComplimentLine, "SAY", nil, index)
    end
  end
end
