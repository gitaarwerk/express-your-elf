ExpressYourElf = {}


local function ExpressYourElf_Commands(msg)
    -- pattern matching that skips leading whitespace and whitespace between cmd and args
    -- any whitespace at end of args is retained
    local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")

    if cmd == "dance" then
        ExpressYourElf.DanceWithMe.run()
    elseif cmd == "flirt" then
        ExpressYourElf.Flirt.run()
    elseif cmd == "gift" then
        ExpressYourElf.GivePresent.run()
    elseif cmd == "phrase" then
        ExpressYourElf.RandomPhrases.run()
    elseif cmd == "toggle" then
        ExpressYourElf.Helpers.ToggleVisibility()
    else
        -- If not handled above, display some sort of help message
        print("To show or hide the interface, use one of these commands");
        print("Syntax: /eyelf toggle");
        print("Or...target someone and then use any of the following commands (and use them as a Macro)");
        print("Syntax: /eyelf dance");
        print("Syntax: /eyelf phrase");
        print("Syntax: /eyelf flirt");
        print("Syntax: /eyelf gift");
    end
end

SlashCmdList["COMMANDS"] = ExpressYourElf_Commands;
SLASH_COMMANDS1	= "/eyelf";
