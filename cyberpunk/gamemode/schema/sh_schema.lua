SCHEMA.name = "Cyberpunk 2077"
SCHEMA.author = "TheFreeMan | Fayz_Golden"
SCHEMA.desc = "A schema based in the Cyberpunk Universe."
SCHEMA.uniqueID = "cyberpunk" -- Schema will be a unique identifier stored in the database.
-- Using a uniqueID will allow for renaming the schema folder.

-- Configure some stuff specific to this schema.
nut.currency.SetUp("credit", "credits")
nut.config.menuMusic = "song/cyberpunk.mp3"

nut.config.bigIntroText = SCHEMA.name
nut.config.smallIntroText = SCHEMA.desc
nut.config.mainColor = Color(1, 24, 175)

nut.util.Include("sv_hooks.lua")
nut.util.Include("cl_legs.lua")