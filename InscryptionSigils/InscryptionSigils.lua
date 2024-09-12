--- STEAMODDED HEADER
--- MOD_NAME: Inscryption Sigils
--- MOD_ID: inscsigs
--- MOD_AUTHOR: [Surrealreal_]
--- MOD_DESCRIPTION: Adds sigils from Inscryption to playing cards
--- VERSION: 0.0.1
--- PREFIX: inscsigs

local mod_path = ''..SMODS.current_mod.path
Insc_config = SMODS.current_mod.config

--- Copied from Cryptid for now

-- for _, file in ipairs(files) do
--     local f, err = SMODS.load_file("Sigils/"..file)
--     if not err then
--         local curr_obj = f()
--         if Insc_config[curr_obj.name] == nil then Insc_config[curr_obj.name] = true end
--     end
-- end
-- for _, file in ipairs(files) do
--     print("Loading file "..file)
--     local f, err = SMODS.load_file("Sigils/"..file)
--     if err then print("Error loading file: "..err) else
--       local curr_obj = f()
--       if Insc_config[curr_obj.name] == nil then Insc_config[curr_obj.name] = true end
--       if Insc_config[curr_obj.name] then
--           if curr_obj.init then curr_obj:init() end
--           if not curr_obj.items then
--             print("Warning: "..file.." has no items")
--           else
--             for _, item in ipairs(curr_obj.items) do
--                 item.discovered = true
--                 if SMODS[item.object_type] then
--                     SMODS[item.object_type](item)
--                     -- JokerDisplay mod support
--                     if JokerDisplay and item.joker_display_definition then
--                         JokerDisplay.Definitions[item.key] = item.joker_display_definition
--                     end
--                 else
--                     print("Error loading item "..item.key.." of unknown type "..item.object_type)
--                 end
--             end
--          end
--       end
--     end
-- end

---



--- SPECTRAL ---

SMODS.Atlas {
    key = 'spectral',
    path = 'Scrybe.png',
    px = 63,
    py = 93
}

-- local curr_obj = SMODS.load_file("Sigils/Sigils.lua")()
-- if Insc_config[curr_obj.name] == nil then Insc_config[curr_obj.name] = true end
-- if curr_obj.init then curr_obj:init() end
-- for _, item in ipairs(curr_obj.items) do
--     item.discovered = true
--     if SMODS[item.object_type] then
--         SMODS[item.object_type](item)
--     end
-- end


SMODS.Consumable {
    object_type = "Consumable",
    set = "Spectral",
    name = "insc-Scrybe",
    key = "scrybe",
    pos = {
        x = 0,
        y = 0
    },
    config = {},
    loc_txt = {
        name = 'Scrybe',
        text = {
            "Add a random",
            "Sigil to a",
            "selected playing card"
        }
    },
    cost = 4,
    atlas = 'inscsigs_spectral',
    can_use = function(self, card)
        --the card itself and one other card
        return #G.hand.highlighted + (G.pack_cards and #G.pack_cards.highlighted or 0) == 1
    end,
    unlocked = true,
    discovered = false
}

--- JOKERS ---

SMODS.Atlas {
    key = 'jokers',
    path = 'InscJokers.png',
    px = 71,
    py = 95
}

SMODS.Joker {
    key = 'deathcard',
    effect = 'Gain X0.5 Mult',
    config = {
        Xmult = 1,
    },
    atlas = 'inscsigs_jokers',
    pos = { x = 0, y = 0 },
    rarity = 3,
    cost = 8,
    unlocked = true,
    discovered = false,
    blueprint_compat = true
}

--- CHALLENGE DECK ---
SMODS.Challenge {
    key = 'start_scrybe',
    consumeables = {
        {id = "c_inscsigs_scrybe"}
    },
    deck = {
        cards = {
            {s = 'C', r = 'A'},
            {s = 'C', r = 'A'},
            {s = 'C', r = '8'},
            {s = 'C', r = '8'},
            {s = 'C', r = '5'},
            {s = 'C', r = '5'},
            {s = 'C', r = '3'},
            {s = 'C', r = '3'},
            {s = 'C', r = '2'},
            {s = 'C', r = '2'},
            {s = 'S', r = 'A'},
            {s = 'S', r = 'A'},
            {s = 'S', r = '8'},
            {s = 'S', r = '8'},
            {s = 'S', r = '5'},
            {s = 'S', r = '5'},
            {s = 'S', r = '3'},
            {s = 'S', r = '3'},
            {s = 'S', r = '2'},
            {s = 'S', r = '2'},
            {s = 'D', r = 'A'},
            {s = 'D', r = 'A'},
            {s = 'D', r = '8'},
            {s = 'D', r = '8'},
            {s = 'D', r = '5'},
            {s = 'D', r = '5'},
            {s = 'D', r = '3'},
            {s = 'D', r = '3'},
            {s = 'D', r = '2'},
            {s = 'D', r = '2'},
            {s = 'H', r = 'A'},
            {s = 'H', r = 'A'},
            {s = 'H', r = '8'},
            {s = 'H', r = '8'},
            {s = 'H', r = '5'},
            {s = 'H', r = '5'},
            {s = 'H', r = '3'},
            {s = 'H', r = '3'},
            {s = 'H', r = '2'},
            {s = 'H', r = '2'}
        }
    }
}