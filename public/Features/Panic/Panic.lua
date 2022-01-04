-- init

ExpressYourElf.Panic = {}
local ExpressYourElf_PanicList = {
   'THIS IS VERY DISTURBING!!!!! I REALLY FEEL THE NEED TO TALK IN CAPS AND WITH A LOT OF EXCLAMATION MARKS!!!!!!!!!!',
   'OH MY GOD! OH MY GOD! OH MY GOD!',
   'OH MY GOD! ONE DIRECTION IS OUTSIDE!!!!',
   'MY SHADOW IS HUNTING ME!!!',
   'THE END IS NIGH!!!!!',
   'I\'M REALLY NOT PANICKING!!',
   'AAAAAAAHHH!!!!!!',
   'MY HAIR IS ON FIRE! MY HAIR IS ON FIRE!',
   'GIVE ME BACK MY BABIES!',
   'Pacman is a cannible!',
   'I CAN\'T HELP IT!! I\'m EMOTIONAL!!!',
   'I WANT BURGERS!',
   'Noooooo, Barbie!!!!!',
   'DRAGONS! DRAGONS!',
}


function ExpressYourElf.Panic.run()
    SendChatMessage(ExpressYourElf_PanicList[fastrandom(1, #ExpressYourElf_PanicList)], "SAY", nil, index);

    local emotes = {
        'PANIC',
        'CRY',
    }

    local randomEmote = emotes[fastrandom(1, #emotes)];

    DoEmote(randomEmote, "");
end
    