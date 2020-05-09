ExpressYourElf = {}

function ExpressYourElf:Show()
    local frame = getglobal("ExpressYourElf_Frame");
    if (frame) then
        frame:Show();
    end
end

function ExpressYourElf:Hide()
    local frame = getglobal("ExpressYourElf_Frame");
    if (frame) then
        frame:Hide();
    end
end

function ExpressYourElf:ToggleVisibility()
    print('toggle')
    local frame = getglobal("ExpressYourElf_Frame");
    if (frame) then
        if(  frame:IsVisible() ) then
            frame:Hide();
        else
            frame:Show();
        end
    end
end

local function ExpressYourElf_Commands(msg)
    -- pattern matching that skips leading whitespace and whitespace between cmd and args
    -- any whitespace at end of args is retained
    local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")

    print('command fired')

    if cmd == "dance" then
        print('start dancing')
        ExpressYourElf.DanceWithMe.run()
        print('done dancing')
    elseif cmd == "flirt" then
        ExpressYourElf.Flirt.run()
    elseif cmd == "gift" then
        ExpressYourElf.GivePresent.run()
    elseif cmd == "phrase" then
        ExpressYourElf.RandomPhrases.run()
    elseif cmd == "toggle" then
        print('toggle')
        ExpressYourElf:ToggleVisibility()
    elseif cmd == "show" then
        ExpressYourElf:Show()
    elseif cmd == "hide" then
        ExpressYourElf:Hide()
    else
        -- If not handled above, display some sort of help message
        print("To show or hide the interface, use one of these commands");
        print("Syntax: /eyelf toggle");
        print("Syntax: /eyelf show");
        print("Syntax: /eyelf hide");
        print("Or...target someone and then use any of the following commands (and use them as a Macro)");
        print("Syntax: /eyelf dance");
        print("Syntax: /eyelf flirt");
        print("Syntax: /eyelf gift");
        print("Syntax: /eyelf phrase");
    end
end

SlashCmdList["COMMANDS"] = ExpressYourElf_Commands;
SLASH_COMMANDS1	= "/eyelf";

print('loaded')