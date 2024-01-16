--=========================================================================================
-- This module should contain your case_data table, an indexed list of individual cases, 
-- each represented by an individual table (the index is irrelevant, it should just be
-- unique to each case).
--
-- Some variables are required, some are optional (see comments on example case_data).
--=========================================================================================
local _, t = ...

t.case_table = {
    [0] = {
        -- These fields are always required. The case will be ignored by
        -- Cutpurse without them.
        name = "Thrall",  -- The last known name of the listed toon.
        url = "https://discord.com/channels/some_discord/channel1",  -- A URL to the evidence against this player.

        -- It is required to have ONE OF category or description, but 
        -- including both is very helpful for users to tailor their alerts.
        description = "Stole all the gold from a gdkp.",  -- A short verbal description of the case and offence.
        category = "gdkp",  -- A category, should be one of "dungeon", "raid", "trade", "gdkp", "harassment"
                            -- If the given category is none of these, it will be ignored.

        -- These fields are optional.
        guid = "Player-GDSAKG-53295G",  -- The GUID of the player. This is a more powerful identifier than the toon's name,
                                        -- and persists through most types of reroll.
        aliases = {"Warchief"},  -- a list of the previous aliases this player has gone under.
        class = "WARRIOR",  -- The unit class, in allcaps english, no spaces, sometimes called the classFilename.
                            -- See https://wowpedia.fandom.com/wiki/API_UnitClass for more info.

    },

    -- The below are all valid configurations.
    [1] = {
        name = "Jittery",
        category = "raid",
        faction = "alliance",
        url = "www.google.com"
    },


--=========================================================================================
-- The provider_table is configured with the above variables, you don't need to touch this.
--=========================================================================================
