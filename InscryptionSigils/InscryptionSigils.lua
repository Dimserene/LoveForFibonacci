--- STEAMODDED HEADER
--- MOD_NAME: Inscryption Sigils
--- MOD_ID: inscsigs
--- MOD_AUTHOR: [Surrealreal_]
--- MOD_DESCRIPTION: Adds sigils from Inscryption to playing cards
--- VERSION: 0.0.1
--- PREFIX: inscsigs

--- SPECTRAL ---

SMODS.Atlas {
    key = 'spectral',
    path = 'Scrybe.png',
    px = 63,
    py = 93
}

SMODS.Consumable {
    set = 'Spectral',
    key = 'scrybe',
    config = {  },
    pos = { x = 0, y = 0 },
    atlas = 'inscsigs_spectral',
    cost = 4,
    unlocked = true,
    discovered = false
}

--- JOKERS ---

SMODS.Atlas {
    key = 'jokers',
    path = 'deathcard.png',
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