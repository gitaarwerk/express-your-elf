-- init
ExpressYourElf.RandomPhrases = {}

function ExpressYourElf.RandomPhrases.GetRandomWorld()
    local listOfWolds = {
        "Azeroth",
        "The Shadowlands",
        "Outland",
        "Argus",
        "Draenor"
    }

    return listOfWolds[fastrandom(1, #listOfWolds)]
end

function ExpressYourElf.RandomPhrases.GetRandomMessage(
    playerName,
    playerGender,
    playerClass,
    playerRace,
    playerLevel,
    playerHisHer,
    playerSirMam
)
    -- opposite
    local oppositeSex = "men"

    if (playerGender == "male") then
        oppositeSex = "women"
    end

    local oppositHeShe = "he"
    if (playerGender == "male") then
        oppositHeShe = "she"
    end

    local randomWorld = ExpressYourElf.RandomPhrases.GetRandomWorld()


    local pickedPhrase
    local listOfPhrases = {
        "You no take candle.",
        "Knock knock",
        'THIS IS VERY DISTURBING!!!!! I REALLY FEEL THE NEED TO TALK IN CAPS AND WITH A LOT OF EXCLAMATION MARKS!!!!!!!!!!',
        "I took an arrow to the knee.",
        "I put on my robe and wizard hat.",
        "Who likes short shorts?",
        "The beauty of me is that I’m very rich.",
        "An 'extremely credible source' has called me and told me that Sylvanas's birth certificate is a fraud.",
        "My fingers are long and beautiful, as, it has been well documented, are various other parts of my body.",
        "I have never seen a thin Elf drinking Diet Coke.",
        "Brb, my goldfish is on fire.",
        "My teeth itch.",
        "It’s happening again!",
        "My nipple is broken.",
        "My hair hurts.",
        "I’ve never seen the inside of my own mouth because it scares me to death.",
        "If it were for the kobolds, we’d all be watching TV by candlelight.",
        "My eye socket is warm.",
        "Have you ever tried sleeping in water?",
        "I'm going to get my toe nail pierced this weekend, you?",
        "There are only three things in life that truly matter: loot, kill and respawn.",
        "It's freezing in Winterspring, we need global warming!",
        "The world is not doing well and we're going great.",
        "What if Jaina was Warchief. She would build great, great wall of ice.",
        "I think I am actually humble. I think I’m much more humble than you would understand.",
        "Everything is a mount, as long as you’re brave enough.",
        "Just an ordinary gas cloud. But watch out, because that's no ordinary gas cloud!",
        "I’m intelligent. Some people would say I’m very, very, very intelligent.",
        "I think the only difference between me and other guildies is that I'm more honest and my ${oppositeSex} are more beautiful.",
        "I saved a big war. I saved a couple of them.",
        "Have you seen the outrageous prices here?",
        "I look very much forward to showing my financials, because they are huge.",
        "Arthas speaks and his people sit up at attention. I want my people to do the same.",
        "I am the only one who can make ${randomWorld} truly great again!",
        'He calls me Mr. ${playerRace}. I’ve known this guy forever. He used to call me, "Hey, ${playerName}, let’s go out to dinner."s You know, before, he’ll go, "Hey, let’s go out to dinner." Now he goes, "Mr. ${playerRace}, ${playerSirMam}, how are you?"',
        'No, no. But I don`t say -- I say flames, we`ll put out the flames. And we`ll put out in some cases just burning embers. We also have burning embers. We have embers and we do have flames. Mount Hyjal became more flame like, but it`s going to be under control.',
        'We have it totally under control. It’s only one person coming in from The Maw. It’s going to be just fine.',
        'The burning legion will have much greater respect for our worlds when I am leading it than when their people have led it.',
        'Will someone from Sylvana’s regime please inform her that I too have a Nuclear Button, but it is a much bigger and more powerful one than hers, and my Button works!',
        'If it weren’t for Kil’Jaeden, we’d all be still fighting in Gnomeregan!',
        'I’m pretty useless at giving advice. Can I interest you in a sarcastic comment instead?',
        'Kids believe in fairy tales. I’ve moved on to fantasy worlds. Where am I actually?',
        'Shush! I can’t hear what the voices are saying.',
        'Does this rag smell like chloroform to you?',
        'No matter what you do – epics, no epic – it doesn’t matter. You have people that are mentally ill. And they’re gonna come through the cracks. And they’re going to do things that ${playerRace}s will not even believe are possible.',
        'Yes, I am an agent of the Legion, but my duties are largely ceremonial.',
        'Did you know my powers can only be used for good.',
        'I don’t work here. I’m a consultant.',
        "I didn’t need this. I had a nice easy life.",
        "I’m a victim. I will tell you.",
        "Before, I was arrogant, but now I'm perfect.",
        "Prior to the plague coming in, the people were calling me. ...You wouldn’t believe it, people that were so far gone, I figured they’d never speak to me and I would never speak to them.",
        'My toys! My toys! I can’t do this job without my toys!',
        'It might look like I’m doing nothing, but at the cellular level I’m really quite busy.',
        'At least I have a positive attitude about my destructive habits.',
        'Someday, we’ll look back on this, laugh nervously and change the subject.',
        'Did you know that Zovaal, The Jailer was actually called Chaining Tatum?',
        'Remember that time when I said I were cool? I lied.',
        'The Tortollan have been betraying me since the start! Now I kill a Tortollan a day, saving a plastic straw!', -- Wildhuntz-Bouderfist EU
        'I’m really easy to get along with once you people learn to worship me.',
        "Being at ease with not knowing is crucial for answers to come to you. Oh maybe just for me. It perhaps explains my rating.",
        'Please don’t tell my Arthas that I used his 2008 Frostmourne to destroy the town of Gilneas, Azeroth in 2010',
        "Those warriors from the Maw? They've got curved swords. Curved. Swords.",
        "Goblin wind turbines kill 13-39 million birds and bats every year!",
        "I tried to be normal once… worst two minutes of my entire life.",
        "I like to be an example for others. Usually a bad example, though.",
        "Common sense is like deodorant—the people who need it most never seem to use it.",
        "I’d like to help you out today, which way did you come in?",
        "Take my advice—I’m not using it.",
        "I used to think I was indecisive, but now I’m not really sure",
        "I respect the opinion of everyone who agrees with me.",
        "Here I am! What are your other two wishes?",
        "I'm not as confused as I seem to act.",
        "Sometimes I just wish dragons would abduct me and crown me their leader.",
        "My parents moved around a lot when I was growing up, but I always found them.",
        "I just bought this amazing chicken broth at the stock market.",
        "And yet I’ve gone decades, decades without a war. The first ${playerRace} to do it for that long a period.",
        "When you see the other side chopping off heads, waterboarding doesn't sound very severe.",
        "When you arise in the morning think of what a privilege it is to be alive, to think, to enjoy, to love, to loot epics and respawn.",
        "We’re rounding ’em up in a very ${playerRace} way, in a very nice way. And they’re going to be happy because they want to be legalized. And, by the way, I know it doesn’t sound nice. But not everything is nice.",
        'How was the weekend, someone asked? Well, on my first date, ${oppositHeShe} said, “I want to take you to the cemetery to meet my parents, you might be the one.”'
    }

    -- self
    if (playerRace == "Draenei" or playerRace == "Night Elf" or playerRace == "Tauren" or playerRace == "Highmountain Tauren" or playerRace == "Lightforged Draenei" or playerRace == "Blood Elf") then
        table.insert(listOfPhrases, "I always wanted to be taller.");
    end

    if (not (playerRace == "Dracthyr")) then
        table.insert(listOfPhrases,
            "What I won't do is take in two hundred thousand dragons who could be Dracthyr... I have been watching this migration. And I see the people. I mean, they're dragons. They're mostly dragons, and they're strong dragons. These are physically young, strong dragons. They look like prime-time soldiers. Now it's probably not true, but where are the women?... So, you ask two things. Number one, why aren't they fighting for their country? And number two, I don't want these dragons coming over here.")
    end

    if (playerGender == "male") then
        table.insert(listOfPhrases, "Hi, I'm the new Milkman");
    else
        table.insert(listOfPhrases, "Hi, I'm the new Milkwoman");
    end

    if (playerRace == "Goblin" or playerRace == "Gnome" or playerRace == "Mechagnome") then
        table.insert(listOfPhrases,
            "We've got new planes, we've got new rockets, new missiles, we've got new everything, and it's either here or coming in.");
    end

    if (playerRace == "Tauren" or playerRace == "Highmountain Tauren") then
        table.insert(listOfPhrases, "Chocolate milk comes from me, you know?");
    end


    if (playerRace == "Dracthyr") then
        table.insert(listOfPhrases, "I have scales, does that mean I'm actually a fish?")
        table.insert(listOfPhrases, "Watch out, here be dragons!");
        table.insert(listOfPhrases,
            "Yesterday, I was telling a bedtime fantastical story to my little son. The story kept dragon-on and on and on!");
        table.insert(listOfPhrases, "Did you know that I am an extremely good guitarists. I really know all the scales!");
        table.insert(listOfPhrases, "I am exceptional in juggling, I'm often called very talon-ted!");
        table.insert(listOfPhrases, "Shall I just wing it?");

        if (playerGender == "female") then
            table.insert(listOfPhrases, "Did you know, that I actualy prefer to wash my scales with Head and Smolders?");
            table.insert(listOfPhrases, "Dragons girls wear bows and bling, because it is a dragons thing.");
        end
    end

    if (playerRace == "Draenei" or playerRace == "Lightforged Draenei") then
        table.insert(listOfPhrases, "T'paartos greets puny one.");
        table.insert(listOfPhrases, "T'paartos!");
    end

    if (playerClass == "Warlock" or playerClass == "Demon Hunter") then
        table.insert(listOfPhrases, "I never understood Fel.");
        table.insert(listOfPhrases, "Drink fel, stay fit, die anyway.");
    end

    if (playerClass == "Death Knight" or targetRace == "Scourge" or targetRace == "Undead") then
        table.insert(listOfPhrases, "It's true, a windmill killed me.");
        table.insert(listOfPhrases, "My parents moved a lot when I died as a kid. But I always found them.");
    end

    if (playerClass == "Mage") then
        table.insert(listOfPhrases, "Iron sword suh? What are you killing? Butterflies?");
        table.insert(listOfPhrases, "I was elected to represent the citizens of Dalaran, not Gnomeregan");
    end

    if (playerClass == "Druid") then
        table.insert(listOfPhrases, "It is in our wild nature that we best recover from our un-nature, our spirituality.");
    end

    if (playerClass == "Hunter" or playerClass == "Demon Hunter") then
        table.insert(listOfPhrases, "But Hunter, where's Hunter? Where is Hunter, by the way?");
    end

    if (playerRace == "Priest") then
        table.insert(listOfPhrases,
            "I have so much to do that I shall spend the first three hours casting Prayer of Mending.");
    end

    if (playerRace == "Gnome" or playerRace == "Mechagnome") then
        table.insert(listOfPhrases, "Crowded elevators smell different to gnomes.");
    end

    if (playerClass == "Paladin" or playerClass == "Priest" or playerRace == "Lightforged Draenei") then
        table.insert(listOfPhrases,
            "Is there a way we can do something like that by injection inside or almost a cleaning? It sounds interesting to me, so we'll see. But the whole concept of the light, the way it kills it in one minute. That's pretty powerful.");
    end

    if (playerRace == "Void Elf" or playerClass == "Warlock") then
        table.insert(flirtLines, "I said 'No' to the voices, but they wouldn’t listen.");
    end

    if (targetRace == "Earthen") then
        table.insert(listOfPhrases, "Where did you dug up {playerName}?");
    end

    if (playerRace == "Earthen") then
        table.insert(listOfPhrases, "I am a rock, I am an island.");
        table.insert(listOfPhrases, "Before I got adopted, I was in beteen a rock and a hard place.");
    end

    -- Add mature content
    if (ExpressYourElfVars.allowMatureContent) then
        -- table.insert(listOfPhrases, "I always wanted to be taller.");
    end


    pickedPhrase = listOfPhrases[fastrandom(1, #listOfPhrases)]

    return ExpressYourElf.Helpers.parseText(
        pickedPhrase,
        {
            playerName = playerName,
            playerGender = playerGender,
            playerClass = playerClass,
            playerRace = playerRace,
            playerSirMam = playerSirMam,
            playerLevel = playerLevel,
            playerHisHer = playerHisHer,
            oppositeSex = oppositeSex,
            randomWorld = randomWorld,
            oppositHeShe = oppositHeShe
        }
    )
end

function ExpressYourElf.RandomPhrases.GetRandomMessageToTarget(
    playerName,
    playerGender,
    playerClass,
    playerRace,
    playerLevel,
    playerHisHer,
    playerSirMam,
    targetName,
    targetGender,
    targetClass,
    targetRace,
    targetLevel,
    targetHisHer,
    targetHeShe,
    targetHimHer
)
    local pickedPhrase;
    local listOfPhrases = {
        "Despite the outcome in the guild, we cannot lose hope and we must all work very hard for a friend and a great person named ${targetName}.",
        "Saw ${targetName}, wanted it, bought it, used it once, kept it in my house for ten years, gave it away.",
        "Hey ${targetName}, your right cheek looks very well today!",
        "I had lunch with ${targetName} last night.",
        "OH NO!, ${targetName}'s at it again!",
        "${targetName}, I regret to inform you that you are no longer welcome at The Knights of The Twisted Knee.",
        "Now, ${targetName}, let’s talk about why I am bitter.",
        "Do you see ${targetName} over there? I think ${targetHeShe}'s my family.",
        "${targetName} has many unpopular opinions. I believe ${targetHisHer} most unpopular opinions are usually about me.",
        "I wonder if I ever appeared in ${targetName}'s dream.",
        "${targetName} often lies on the floor.",
        "${targetName}, I think I'm here for you.",
        "Here is the sitting-cream back, ${targetName}. It was already half-empty.",
        "Have you read the book 'How to deal with awkward situations'? I borrowed it from ${targetName}.",
        "What I'm doing is NOT creepy, I am just taking notes on every move ${targetName} makes.",
        "I think I just hugged my dentist instead of ${targetName}.",
        "Can someone take a picture of ${targetName} and me? Because these two buddies are looking AWE-SOME!",
        "I have ${targetName}’s hand tattooed on my shoulder, wanna see it?",
        "My life’s goal is to convince my partner to cover ${targetName}, dressed as a trendy ${targetRace}.",
        "I love reading the 10 weirdest things ${targetName} said.",
        "This is ${targetName}, ${targetHeShe} likes to listen to stories of people and ${targetHeShe} always smiles. Hope you take good care of ${targetHimHer}",
        "${targetName}, You must go forth into the world, with passion, courage in your conviction, and most importantly be true to yourself. I did it!",
        "${targetName} is somebody that I've always liked, but a lot of people like ${targetName}. Some people probably don't like ${targetName}, but ${targetName}'s somebody I've always liked.",
        "I have tremendous respect for ${targetRace}s.",
        "I name all of my children to important people in my life. My last one is called ${targetName}.",
        "People like the Pandaren, abusing their dual factionship and smuggling in illegal ${targetRace} among other disgusting deplorables, how sad their lives must be."
    }

    if (targetName == "Yamisuzu" or targetName == "Alhena") then
        table.insert(listOfPhrases, "ally ally ally! OI OI OI!");
    end

    if (targetLevel and targetLevel < 50) then
        table.insert(listOfPhrases,
            'I steal yo soul and cast Lightning level 1,000,000. Your body explodes into a fine bloody mist, because you are only a level ${targetLevel} ${targetClass}.');
    end

    if (targetClass and targetClass == "Warlock") then
        table.insert(listOfPhrases, 'Uh, bing, bing, bong, bong, get out, demon!');
    end

    if (targetClass and targetClass == "Mage") then
        table.insert(listOfPhrases, "You're a wizard, ${targetName}!");
    end

    if (targetClass and targetClass == "Priest") then
        table.insert(listOfPhrases,
            "${targetName}, would you grab my arm, so I can tell my friends I’ve been touched by a Priest.");
    end

    if (playerRace == "Dracthyr" and targetClass == "Paladin") then
        table.insert(listOfPhrases, "I don't eat paladins because they always taste lawful!");
    end


    pickedPhrase = listOfPhrases[fastrandom(1, #listOfPhrases)]

    return ExpressYourElf.Helpers.parseText(
        pickedPhrase,
        {
            playerName = playerName,
            playerGender = playerGender,
            playerClass = playerClass,
            playerRace = playerRace,
            playerSirMam = playerSirMam,
            playerLevel = playerLevel,
            playerHisHer = playerHisHer,
            targetName = targetName,
            targetGender = targetGender,
            targetClass = targetClass,
            targetRace = targetRace,
            targetLevel = targetLevel,
            targetHisHer = targetHisHer,
            targetHeShe = targetHeShe,
            targetHimHer = targetHimHer,
        }
    )
end

function ExpressYourElf.RandomPhrases.run()
    local playerName, playerGender, playerClass, playerRace, playerLevel = ExpressYourElf.Helpers.GetPlayerInformation()
    local targetName, targetGender, targetClass, targetRace, targetLevel, targetHisHer
    local playerHisHer                                                   = string.lower(ExpressYourElf.Helpers.GetHisHer(
        playerGender))
    local playerSirMam                                                   = string.lower(ExpressYourElf.Helpers.GetSirMam(
        playerGender))

    if (UnitName("target") and UnitPlayerControlled("target")) then
        targetName, targetGender, targetClass, targetRace, targetLevel = ExpressYourElf.Helpers.GetTargetInformation()
        targetHisHer                                                   = string.lower(ExpressYourElf.Helpers.GetHisHer(
            targetGender))
        targetHeShe                                                    = string.lower(ExpressYourElf.Helpers.GetHeShe(
            targetGender))
        targetHimHer                                                   = string.lower(ExpressYourElf.Helpers.GetHimHer(
            targetGender))
    end

    -- get random phrases
    if (UnitName("target") and UnitPlayerControlled("target")) then
        local RandomPhraseTargeted = ExpressYourElf.RandomPhrases.GetRandomMessageToTarget(
            playerName,
            playerGender,
            playerClass,
            playerRace,
            playerLevel,
            playerHisHer,
            playerSirMam,
            targetName,
            targetGender,
            targetClass,
            targetRace,
            targetLevel,
            targetHisHer,
            targetHeShe,
            targetHimHer
        )
        SendChatMessage(RandomPhraseTargeted);
    else
        local RandomPhraseSelf = ExpressYourElf.RandomPhrases.GetRandomMessage(
            playerName,
            playerGender,
            playerClass,
            playerRace,
            playerLevel,
            playerHisHer,
            playerSirMam
        )
        SendChatMessage(RandomPhraseSelf);
    end
end
