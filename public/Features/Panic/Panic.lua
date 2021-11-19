-- init

ExpressYourElf.Panic = {}
ExpressYourElf.Panic.list = {
   'THIS IS VERY DISTURBING!!!!! I REALLY FEEL THE NEED TO TALK IN CAPS AND WITH A LOT OF EXCLAMATION MARKS!!!!!!!!!!',
   'OH MY GOD! OH MY GOD! OH MY GOD!',
   'MY SHADOW IS HUNTING ME!!!',
   'THE END IS NIGH!!!!!',
   'I\'M REALLY NOT PANICKING!!',
   'AAAAAAAHHH!!!!!!',
}


function ExpressYourElf.Panic.run()
    local panicList = ExpressYourElf.Panic.list
    SendChatMessage(panicList[fastrandom(1, #panicList)], "SAY", nil, index);

    local emotes = {
        'PANIC'
    }

    local randomEmote = emotes[fastrandom(1, #emotes)];

    DoEmote(randomEmote, "");
end
    