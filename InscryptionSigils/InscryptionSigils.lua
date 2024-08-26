--- STEAMODDED HEADER
--- MOD_NAME: Inscryption Sigils
--- MOD_ID: inscsigs
--- MOD_AUTHOR: [Surrealreal_]
--- MOD_DESCRIPTION: Adds sigils from Inscryption to playing cards
--- VERSION: 0.0.1
--- PREFIX: inscsigs

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