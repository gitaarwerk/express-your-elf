local function ExpressYourElf_Commands(msg)
    -- pattern matching that skips leading whitespace and whitespace between cmd and args
    -- any whitespace at end of args is retained
    local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")

    -- introduce yourself
    if cmd == "howdy" then
        SendChatMessage(ExpressYourElf.PrintText('sdsd') ,"SAY" ,nil ,"channel");
    elseif cmd == "dance" then
        ExpressYourElf.DanceWithMe.run()
    else
        -- If not handled above, display some sort of help message
        print("Syntax: /eyex howdy text");
        print("Syntax: /eyex dance");
    end
end

SlashCmdList["COMMANDS"] = ExpressYourElf_Commands;
SLASH_COMMANDS1	= "/eyex";

print('Express your Elf! started')