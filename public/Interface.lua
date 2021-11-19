ExpressYourElf = {}

local function ExpressYourElf_Init(msg)
    -- pattern matching that skips leading whitespace and whitespace between cmd and args
    -- any whitespace at end of args is retained
    local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")

    if cmd == "dance" then
        ExpressYourElf.DanceWithMe.run()
    elseif cmd == "flirt" then
        ExpressYourElf.Flirt.run()
    elseif cmd == "seduce" then
        ExpressYourElf.Seduce.run()
    elseif cmd == "gift" then
        ExpressYourElf.GivePresent.run()
    elseif cmd == "phrase" then
        ExpressYourElf.RandomPhrases.run()
    elseif cmd == "rude" then
        ExpressYourElf.IAmRude.run()
    elseif cmd == "battleshout" then
        ExpressYourElf.Battleshout.run()
    elseif cmd == "panic" then
        ExpressYourElf.Panic.run()
    elseif cmd == "toggle" then
        ExpressYourElf.Helpers.ToggleVisibility()
    else
        -- If not handled above, display some sort of help message
        print("To move the frame, drag in between the buttons.");
        print("To show or hide the interface, use one of these commands:");
        print("Syntax: /eyelf toggle");
        print("Or...target someone and then use any of the following commands (and use them as a Macro)");
        print("Syntax: /eyelf dance");
        print("Syntax: /eyelf phrase");
        print("Syntax: /eyelf flirt");
        print("Syntax: /eyelf seduce");
        print("Syntax: /eyelf gift");
        print("Syntax: /eyelf rude");
        print("Syntax: /eyelf battleshout");
        print("Syntax: /eyelf panic");
    end
end

SlashCmdList["EYELF"] = ExpressYourElf_Init;

SLASH_EYELF1	= "/eyelf"
SLASH_EYELF2	= "/expressyourelf"