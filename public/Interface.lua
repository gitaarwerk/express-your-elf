ExpressYourElf = {}
ExpressYourElfMessageColor = "\124cffff4f98";

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
            danceText = "Dance with " ..targetName
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
            AltGameTooltip:SetText("Give a present to " ..targetName, 1.0, 0.82, 0.0, 1, true)
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
            AltGameTooltip:SetText("Be rude to " ..  targetName ,1.0, 0.82, 0.0, 1, true)
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
            AltGameTooltip:SetText("Seduce " .. targetName ,1.0, 0.82, 0.0, 1, true)
            AltGameTooltip:Show()
        end)
        ExpressYourElf_SeduceButton:SetScript("OnLeave", function(self)
            AltGameTooltip:Hide()
            AltGameTooltip:SetScale(1)
        end)
    end


    if (ExpressYourElf_RandomButton:IsEnabled()) then
        local randomText = "Say something random"
        
        if(targetName ~= nil and UnitPlayerControlled("target")) then
            randomText = "Say something random to " .. targetName
        end

        ExpressYourElf_RandomButton:SetScript("OnEnter", function(self)
            AltGameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
            AltGameTooltip:SetScale(scale)
            AltGameTooltip:SetText(randomText ,1.0, 0.82, 0.0, 1, true)
            AltGameTooltip:Show()
        end)
        ExpressYourElf_RandomButton:SetScript("OnLeave", function(self)
            AltGameTooltip:Hide()
            AltGameTooltip:SetScale(1)
        end)
    end
end

function ExpressYourElf_StartMoving()
    ExpressYourElf_Frame:Show()
    ExpressYourElf_Frame:SetFrameStrata("TOOLTIP")
    ExpressYourElf_Frame:SetMovable(true)
    ExpressYourElf_Frame_BG:Show()

    -- disable all buttons
    ExpressYourElf_FlirtButton:Hide()
    ExpressYourElf_SeduceButton:Hide()
    ExpressYourElf_GiftButton:Hide()
    ExpressYourElf_RudeButton:Hide()
    ExpressYourElf_DancingButton:Hide()
    ExpressYourElf_RandomButton:Hide()
end

function ExpressYourElf_StopMoving()
    if (ExpressYourElfVars.isShown ~= true) then
        ExpressYourElf_Frame:Hide()
    end
    ExpressYourElf_Frame:SetFrameStrata("DIALOG")
    ExpressYourElf_Frame:SetMovable(false)
    ExpressYourElf_Frame_BG:Hide()

    -- always on buttons
    ExpressYourElf_FlirtButton:Show()
    ExpressYourElf_SeduceButton:Show()
    ExpressYourElf_GiftButton:Show()
    ExpressYourElf_RudeButton:Show()
    ExpressYourElf_DancingButton:Show()
    ExpressYourElf_RandomButton:Show()
end

function ExpressYourElf_SetScale(scale)
    local newValue = math.floor(scale*100)/100
    ExpressYourElf_Frame:SetScale(newValue);
    ExpressYourElfVars.interfaceScale = newValue
end

function ExpressYourElf_ShowButtons()
    ExpressYourElfVars.IsShown = true
    ExpressYourElf_Frame:Show();
end

function ExpressYourElf_HideButtons()
    ExpressYourElfVars.IsShown = false
    ExpressYourElf_Frame:Hide();
end

function ExpressYourElf_AnsweringMachineOn()
    ExpressYourElfVars.answeringMachineIsOn = true
end

function ExpressYourElf_AnsweringMachineOff()
    ExpressYourElfVars.answeringMachineIsOn = false
end

function ExpressYourElf_NurseNancyOn()
    ExpressYourElfVars.nurseNancyIsOn = true
end

function ExpressYourElf_NurseNancyOff()
    ExpressYourElfVars.nurseNancyIsOn = false
end


local function ExpressYourElf_Init(msg)
    -- pattern matching that skips leading whitespace and whitespace between cmd and args
    -- any whitespace at end of args is retained
    local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")

    if cmd == "dance" then
        ExpressYourElf.DanceWithMe.run()
    elseif cmd == "reset" then
        ExpressYourElfVars = nil
        if (ExpressYourElfVars == nil) then
            print('Express your Elf has been reset. You should now type /reload.')
        end
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
    elseif cmd == "show" then
        ExpressYourElf_ShowButtons()
    elseif cmd == "hide" then
        ExpressYourElf_HideButtons()
    else
        ExpressYourElf_ConfigScreen:Show()
        -- If not handled above, display some sort of help message
        print("To show or hide the interface, use one of these commands:");
        print("Syntax: /eyelf show");
        print("Syntax: /eyelf hide");
    end
end

SlashCmdList["EYELF"] = ExpressYourElf_Init;

SLASH_EYELF1	= "/eyelf"
SLASH_EYELF2	= "/expressyourelf"