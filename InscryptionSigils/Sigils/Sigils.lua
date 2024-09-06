
local seed = {
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
        return #G.hand.highlighted + (G.pack_cards and #G.pack_cards.highlighted or 0) == 2
    end,
    loc_vars = function(self, info_queue, card)
		info_queue[#info_queue+1] = {key = 'cry_rigged', set = 'Other', vars = {}}
	end,
    use = function(self, card, area, copier)
        if area then area:remove_from_highlighted(card) end
        if G.jokers.highlighted[1] then
            G.jokers.highlighted[1].ability.cry_rigged = true
            if G.jokers.highlighted[1].config.center.key == "j_cry_googol_play" then 
                check_for_unlock({type = 'googol_play_rigged'})
	    end
        end
        if G.hand.highlighted[1] then
            G.hand.highlighted[1].ability.cry_rigged = true
        end
        if G.consumeables.highlighted[1] then
            G.consumeables.highlighted[1].ability.cry_rigged = true
        end
        if G.pack_cards and G.pack_cards.highlighted[1] then
            G.pack_cards.highlighted[1].ability.cry_rigged = true
        end
    end
}

--- ONE FOR EACH SIGIL ---

-- local sprinter = {
--     object_type = "Sticker",
--     atlas = "sticker",
--     pos = {x = 0, y = 0}, 
--     loc_txt = {
--         name = "Sprinter",
--         label = "Sprinter",
--         text = {
--             "All {C:cry_code}listed{} probabilities",
--             "are {C:cry_code}guaranteed"
--         },
--     },
--     key = "cry_rigged",
--     no_sticker_sheet = true,
--     prefix_config = {key = false},
--     badge_colour = HEX("acf29c"),
--     draw = function(self, card) --don't draw shine
--         G.shared_stickers[self.key].role.draw_major = card
--         G.shared_stickers[self.key]:draw_shader('dissolve', nil, nil, nil, card.children.center)
--     end
-- }