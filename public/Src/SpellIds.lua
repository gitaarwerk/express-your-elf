ExpressYourElf.SpellIds = {}

function ExpressYourElf.SpellIds.isSingleRess(spellId)
    local spellIds = {
            2006, -- Priest's Resurrection
            2008, -- Shaman's Ancesttral spirit
            7328, -- Paladin's Redemption
            50769, --Druid's revive
            115178, --Monk's Resuscitate
            8342, --Goblin Jumper cables
            22999, --Goblin Jumper cables XL
            54732, --Gnomish army knife
    }

    if ExpressYourElf.Helpers.tableContainsValue(spellIds, spellId) then
        return true
    end

    return false
end


function ExpressYourElf.SpellIds.isCombatRess(spellId)
    local spellIds = {
        20484, -- Druid's Rebirth.
        61999, -- Death knight's Raise ally.
        159931, -- Hunter's Gift of Chi-ji.
        20707, -- Warlock's soul stone.
        391054, -- Paladin's Intercession.
        348477, -- Engineer's Disposable Spectrophasic Reanimator (older version).
        345130, -- Engineer's Disposable Spectrophasic Reanimator.
        265116, -- Engineer's Unstable Temporal Time Shifter.
        184308, -- Disposable Spectrophasic Reanimator.
    }
    
    if ExpressYourElf.Helpers.tableContainsValue(spellIds, spellId) then
        return true
    end

    return false
end


function ExpressYourElf.SpellIds.isSelfRess(spellId)
    local spellIds = {
        20608, -- Shaman's Reincarnation
        23701, -- Darkmoon card: Twisting Nether
    }

    if ExpressYourElf.Helpers.tableContainsValue(spellIds, spellId) then
        return true
    end

    return false
end


function ExpressYourElf.SpellIds.isMassRess(spellId)
    local spellIds = {
        212048, -- Shaman's Ancestral Vision
        212036, -- Priest's Mass Resurrection
        212056, -- Paladin's Absolution
        212051, -- Monk's Reawaken
        212040, -- Druid's Revitalize
    }

    if ExpressYourElf.Helpers.tableContainsValue(spellIds, spellId) then
        return true
    end

    return false
end

-- Shaman, Alliance heroism
function ExpressYourElf.SpellIds.isHeroism(spellId)
    local spellIds = {
        32182,
        65983,
        78151,
        290582,
        204362,
        32182,
    }

    if ExpressYourElf.Helpers.tableContainsValue(spellIds, spellId) then
        return true
    end

    return false
end

-- Shaman, Horde bloodlust
function ExpressYourElf.SpellIds.isBloodlust(spellId)
    local spellIds = {
        2825,
        71975, 
        204361,
        37067,
        16170,
        164298,
        6742,
    }

    if ExpressYourElf.Helpers.tableContainsValue(spellIds, spellId) then
        return true
    end

    return false
end

-- Hunter, Ancient Hysteria
function ExpressYourElf.SpellIds.isAncientHysteria(spellId)
    local spellIds = {
        90355,
    }

    if ExpressYourElf.Helpers.tableContainsValue(spellIds, spellId) then
        return true
    end

    return false
end

-- Mage, Time Warp
function ExpressYourElf.SpellIds.isTimeWarp(spellId)
    local spellIds = {
        80353,
        145534,
        287925,
        189359,
        227665,
        350249,
        244645,
        173106,
    }

    if ExpressYourElf.Helpers.tableContainsValue(spellIds, spellId) then
        return true
    end

    return false
end

-- Drums of ...
function ExpressYourElf.SpellIds.isDrums(spellId)
    local spellIds = {
        309658, -- ferocity
        178207,-- fury
        146555, -- rage
        35475, -- war
        230935, -- mountain
    }

    if ExpressYourElf.Helpers.tableContainsValue(spellIds, spellId) then
        return true
    end

    return false
end

-- Is drums, heroism, bloodlust, timework or ancient hysteria...
function ExpressYourElf.SpellIds.isBigHasteCast(spellId)
    if (ExpressYourElf.SpellIds.isDrums(spellId)) then
        return 'Drums'
    end 

    if (ExpressYourElf.SpellIds.isTimeWarp(spellId)) then
        return 'Time Warp'
    end

    if (ExpressYourElf.SpellIds.isAncientHysteria(spellId)) then
        return 'Ancient Hysteria'
    end

    if (ExpressYourElf.SpellIds.isBloodlust(spellId)) then
        return 'Bloodlust'
    end

    if (ExpressYourElf.SpellIds.isHeroism(spellId)) then
        return 'Heroism'
    end

    return false
end