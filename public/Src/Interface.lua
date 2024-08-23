ExpressYourElf = {}
ExpressYourElfMessageColor = "\124cffff4f98";

function dump(o)
    if type(o) == 'table' then
        local s = '{ ';
        for k, v in pairs(o) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ',';
        end
        return s .. '} ';
    else
        return tostring(o);
    end
end

function debugPrint(feature, message)
    if (not (ExpressYourElfVars)) then
        return;
    end

    if (ExpressYourElfVars.debugMode == true) then
        local prefix = "[EYELF_DEBUG (" .. feature .. ")] ";
        print(prefix .. message);
    end
end

function ExpressYourElf_Reset_Tooltips()
    local targetName = UnitName("target")
    local scale = 0.7

    ExpressYourElf_DancingButton:SetScript("OnEnter", nil)
    ExpressYourElf_DancingButton:SetScript("OnLeave", nil)
    ExpressYourElf_GiftButton:SetScript("OnEnter", nil)
    ExpressYourElf_GiftButton:SetScript("OnLeave", nil)
    ExpressYourElf_RudeButton:SetScript("OnEnter", nil)
    ExpressYourElf_RudeButton:SetScript("OnLeave", nil)
    ExpressYourElf_FlirtButton:SetScript("OnEnter", nil)
    ExpressYourElf_FlirtButton:SetScript("OnLeave", nil)
    ExpressYourElf_SeduceButton:SetScript("OnEnter", nil)
    ExpressYourElf_SeduceButton:SetScript("OnLeave", nil)
    ExpressYourElf_RandomButton:SetScript("OnEnter", nil)
    ExpressYourElf_RandomButton:SetScript("OnLeave", nil)

    if (ExpressYourElf_DancingButton:IsEnabled()) then
        local danceText = "Dance"
        if (targetName ~= nil) then
            danceText = "Dance with " .. targetName
        end

        ExpressYourElf_DancingButton:SetScript("OnEnter", function(self)
            AltGameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
            AltGameTooltip:SetScale(scale)
            AltGameTooltip:SetText(danceText, 1.0, 0.82, 0.0, 1, true)
            AltGameTooltip:Show()
        end)
        ExpressYourElf_DancingButton:SetScript("OnLeave", function(self)
            AltGameTooltip:Hide()
            AltGameTooltip:SetScale(1)
        end)
    end

    if (ExpressYourElf_GiftButton:IsEnabled()) then
        ExpressYourElf_GiftButton:SetScript("OnEnter", function(self)
            AltGameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
            AltGameTooltip:SetScale(scale)
            AltGameTooltip:SetText("Give a present to " .. targetName, 1.0, 0.82, 0.0, 1, true)
            AltGameTooltip:Show()
        end)
        ExpressYourElf_GiftButton:SetScript("OnLeave", function(self)
            AltGameTooltip:Hide()
            AltGameTooltip:SetScale(1)
        end)
    end

    if (ExpressYourElf_RudeButton:IsEnabled()) then
        ExpressYourElf_RudeButton:SetScript("OnEnter", function(self)
            AltGameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
            AltGameTooltip:SetScale(scale)
            AltGameTooltip:SetText("Be rude to " .. targetName, 1.0, 0.82, 0.0, 1, true)
            AltGameTooltip:Show()
        end)
        ExpressYourElf_RudeButton:SetScript("OnLeave", function(self)
            AltGameTooltip:Hide()
            AltGameTooltip:SetScale(1)
        end)
    end


    if (ExpressYourElf_FlirtButton:IsEnabled()) then
        ExpressYourElf_FlirtButton:SetScript("OnEnter", function(self)
            AltGameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
            AltGameTooltip:SetScale(scale)
            AltGameTooltip:SetText("Flirt with " .. targetName, 1.0, 0.82, 0.0, 1, true)
            AltGameTooltip:Show()
        end)
        ExpressYourElf_FlirtButton:SetScript("OnLeave", function(self)
            AltGameTooltip:Hide()
            AltGameTooltip:SetScale(1)
        end)
    end


    if (ExpressYourElf_SeduceButton:IsEnabled()) then
        ExpressYourElf_SeduceButton:SetScript("OnEnter", function(self)
            AltGameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
            AltGameTooltip:SetScale(scale)
            AltGameTooltip:SetText("Seduce " .. targetName, 1.0, 0.82, 0.0, 1, true)
            AltGameTooltip:Show()
        end)
        ExpressYourElf_SeduceButton:SetScript("OnLeave", function(self)
            AltGameTooltip:Hide()
            AltGameTooltip:SetScale(1)
        end)
    end


    if (ExpressYourElf_RandomButton:IsEnabled()) then
        local randomText = "Say something random"

        if (targetName ~= nil and UnitPlayerControlled("target")) then
            randomText = "Say something random to " .. targetName
        end

        ExpressYourElf_RandomButton:SetScript("OnEnter", function(self)
            AltGameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
            AltGameTooltip:SetScale(scale)
            AltGameTooltip:SetText(randomText, 1.0, 0.82, 0.0, 1, true)
            AltGameTooltip:Show()
        end)
        ExpressYourElf_RandomButton:SetScript("OnLeave", function(self)
            AltGameTooltip:Hide()
            AltGameTooltip:SetScale(1)
        end)
    end
end

function ExpressYourElf_SetScale(scale)
    local newValue = math.floor(scale * 100) / 100
    ExpressYourElf_Frame:SetScale(newValue);
    ExpressYourElfVars.interfaceScale = newValue
end

function ExpressYourElf_ShowButtons()
    ExpressYourElf_Frame:Show();
    ExpressYourElfVars.IsShown = true
end

function ExpressYourElf_HideButtons()
    ExpressYourElf_Frame:Hide();
    ExpressYourElfVars.IsShown = false
end

function ExpressYourElf_AllowMatureContent()
    ExpressYourElfVars.allowMatureContent = true
    ExpressYourElf_SeduceButton:Enable()
    ExpressYourElf_SeduceButton:SetAlpha(1)
end

function ExpressYourElf_DisallowMatureContent()
    ExpressYourElfVars.allowMatureContent = false
    ExpressYourElf_SeduceButton:Disable()
    ExpressYourElf_SeduceButton:SetAlpha(0.3)
end

function ExpressYourElf_ConsentToFlirt()
    ExpressYourElfVars.flirtConsent = true
    ExpressYourElf_FlirtButton:Enable()
    ExpressYourElf_FlirtButton:SetAlpha(1)

    if (ExpressYourElfVars.allowMatureContent) then
        ExpressYourElf_SeduceButton:Enable()
        ExpressYourElf_SeduceButton:SetAlpha(1)
    end
end

function ExpressYourElf_DoNotConsentToFlirt()
    ExpressYourElfVars.flirtConsent = false
    ExpressYourElf_SeduceButton:Disable()
    ExpressYourElf_FlirtButton:Disable()
    ExpressYourElf_SeduceButton:SetAlpha(0.3)
    ExpressYourElf_FlirtButton:SetAlpha(0.3)
end

function ExpressYourElf_ToggleMinimize(option)
    if (option == false) then
        ExpressYourElfVars.minimized = true;
    end

    if (option == true) then
        ExpressYourElfVars.minimized = false;
    end

    if (ExpressYourElfVars.minimized) then
        ExpressYourElfVars.minimized = false;
        ExpressYourElf_Frame:SetHeight(125);
        ExpressYourElf_DancingButton:Show()
        ExpressYourElf_RandomButton:Show()
        ExpressYourElf_FlirtButton:Show()
        ExpressYourElf_SeduceButton:Show()
        ExpressYourElf_GiftButton:Show()
        ExpressYourElf_RudeButton:Show()
    else
        ExpressYourElfVars.minimized = true;
        ExpressYourElf_DancingButton:Hide()
        ExpressYourElf_RandomButton:Hide()
        ExpressYourElf_FlirtButton:Hide()
        ExpressYourElf_SeduceButton:Hide()
        ExpressYourElf_GiftButton:Hide()
        ExpressYourElf_RudeButton:Hide()
        ExpressYourElf_Frame:SetHeight(1);
    end
end

-- function ExpressYourElf_BombsGoBurrOn()
--     ExpressYourElfVars.bombsGoBurrIsOn = true
-- end

-- function ExpressYourElf_BombsGoBurrOff()
--     ExpressYourElfVars.bombsGoBurrIsOn = false
-- end

function ExpressYourElf_DebugOn()
    print('Express Your Elf: Debug mode is now ON.')
    ExpressYourElfVars.debugMode = true
end

function ExpressYourElf_DebugOff()
    print('Express Your Elf: Debug mode is now OFF.')
    ExpressYourElfVars.debugMode = false
end

local function ExpressYourElf_Init(msg)
    -- pattern matching that skips leading whitespace and whitespace between cmd and args
    -- any whitespace at end of args is retained
    local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")

    if cmd == "dance" then
        ExpressYourElf.DanceWithMe.run()
    elseif cmd == "compliment" then
        ExpressYourElf.Compliment.run()
    elseif cmd == "reset" then
        ExpressYourElfVars = nil;
        if (ExpressYourElfVars == nil) then
            print('Express your Elf has been reset. You should now type /reload.')
        end
    elseif cmd == "show" then
        ExpressYourElf_ShowButtons();
    elseif cmd == "hide" then
        ExpressYourElf_HideButtons();
    elseif cmd == "debug" then
        if (ExpressYourElfVars and ExpressYourElfVars.debugMode) then
            ExpressYourElf_DebugOff();
            return;
        end

        if (not (ExpressYourElfVars) or ExpressYourElfVars and ExpressYourElfVars.debugMode == false) then
            ExpressYourElf_DebugOn();
        end
        local dumpedVars = dump(ExpressYourElfVars);
        print("Dumped EYELF Vars: " .. dumpedVars);
    else
        ExpressYourElf_ConfigScreen:Show();
        -- If not handled above, display some sort of help message
        print("To show or hide the button ;interface, use one of these commands:");
        print("Syntax: /eyelf show");
        print("Syntax: /eyelf hide");
        print("", "And to reset the vars");
        print("Syntax: /eyelf reset");
    end
end

SlashCmdList["EYELF"] = ExpressYourElf_Init;

SLASH_EYELF1 = "/eyelf"
SLASH_EYELF2 = "/expressyourelf"
