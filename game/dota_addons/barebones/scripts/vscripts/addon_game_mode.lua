require("statcollection/init")
require('internal/util')
require('gamemode')

function Precache( context )
-- Custom Effects Precache
	PrecacheResource("particle_folder", "particles/econ/items/phantom_assassin/phantom_assassin_arcana_elder_smith", context)
	PrecacheResource("particle_folder", "particles/econ/items/luna/luna_crescent_moon", context)
	PrecacheResource("particle_folder", "particles/econ/items/gyrocopter/hero_gyrocopter_atomic_gold", context)
	PrecacheResource("particle_folder", "particles/econ/items/clockwerk/clockwerk_paraflare", context)
	PrecacheResource("particle_folder", "particles/econ/items/puck/puck_alliance_set", context)
	PrecacheResource("particle_folder", "particles/econ/items/shadow_fiend/sf_desolation", context)
	PrecacheResource("particle_folder", "particles/status_fx", context)
	PrecacheResource("particle_folder", "particles/econ/items/gyrocopter/hero_gyrocopter_gyrotechnics", context)
	PrecacheResource("particle_folder", "particles/econ/courier/courier_wyvern_hatchling", context)
	PrecacheResource("particle_folder", "particles/econ/items/wraith_king/wraith_king_ti6_bracer", context)
	PrecacheResource("particle_folder", "particles/econ/items/tinker/tinker_motm_rollermaw", context)
	PrecacheResource("particle_folder", "particles/econ/items/abaddon/abaddon_alliance", context)
	PrecacheResource("particle_folder", "particles/econ/items/razor/razor_ti6", context)
	PrecacheResource("particle_folder", "particles/items2_fx", context)
	PrecacheResource("particle_folder", "particles/custom", context)
	PrecacheResource("particle_folder", "particles/econ/events/ti6", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_dragon_knight", context)
	PrecacheResource("particle_folder", "particles/custom/items/orb", context)
	PrecacheResource("particle_folder", "models/items/lone_druid/true_form/form_of_the_atniw", context)
	PrecacheResource("particle_folder", "models/items/lone_druid/bear/spirit_of_the_atniw", context)
	PrecacheResource("particle_folder", "particles/econ/events/ti6", context)
	PrecacheResource("particle_folder", "particles/econ/items/magnataur/shock_of_the_anvil", context)
	PrecacheResource("particle_folder", "particles/econ/items/rubick/rubick_staff_wandering", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_monkey_king", context)
	PrecacheResource("particle_folder", "particles/econ/courier/courier_roshan_frost", context)
	PrecacheResource("particle_folder", "models/items/ancient_apparition/shatterblast_crown", context)
	PrecacheResource("particle_folder", "particles/econ/items/nyx_assassin/nyx_assassin_ti6_witness", context)
	PrecacheResource("particle_folder", "particles/econ/courier/courier_axolotl_ambient", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_earth_spirit/", context)
	PrecacheResource("particle_folder", "particles/econ/items/effigies/status_fx_effigies", context)
	PrecacheResource("particle_folder", "particles/econ/items/shadow_fiend/sf_fire_arcana", context)
	PrecacheResource("particle_folder", "particles/econ/items/abaddon/abaddon_alliance", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_abaddon", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_desert_wyrm", context)
	PrecacheResource("particle_folder", "particles/econ/items/phoenix/phoenix_solar_forge/phoenix_sunray_solar_forge", context)
	PrecacheResource("particle_folder", "particles/units/heroes/heroes_underlord", context)
	PrecacheResource("particle_folder", "particles/frostivus_gameplay", context)

	PrecacheResource("soundfile", "soundevents/game_sounds_custom.vsndevts", context)
	PrecacheResource("soundfile", "soundevents/game_sounds_dungeon.vsndevts", context)
	PrecacheResource("soundfile", "soundevents/game_sounds_dungeon_enemies.vsndevts", context)

	PrecacheResource("model_folder", "models/heroes/skeleton_king", context) --Lich King Boss
	PrecacheResource("model_folder", "models/heroes/monkey_king", context) --Spirit Master Boss
	PrecacheResource("model_folder", "models/items/monkey_king/monkey_king_arcana_head", context) --Spirit Master Boss

	PrecacheResource("model_folder", "models/items/dragon_knight/ascension_weapon", context) --Arthas Boss Set
	PrecacheResource("model_folder", "models/items/dragon_knight/ascension_back", context) 
	PrecacheResource("model_folder", "models/items/dragon_knight/ascension_offhand", context) 
	PrecacheResource("model_folder", "models/items/dragon_knight/ascension_arms", context) 
	PrecacheResource("model_folder", "models/items/dragon_knight/ascension_shoulder", context) 
	PrecacheResource("model_folder", "models/items/dragon_knight/ascension_head", context)

	PrecacheResource("model_folder", "models/items/chaos_knight/ck_esp_blade", context) --Dark Fundamental Boss Set
	PrecacheResource("model_folder", "models/items/chaos_knight/ck_esp_helm", context)
	PrecacheResource("model_folder", "models/items/chaos_knight/ck_esp_mount", context)
	PrecacheResource("model_folder", "models/items/chaos_knight/ck_esp_shield", context)
	PrecacheResource("model_folder", "models/items/chaos_knight/ck_esp_shoulder", context)
	PrecacheResource("model_folder", "particles/units/heroes/hero_nyx_assassin", context)
	PrecacheResource("model_folder", "models/items/furion/treant/the_ancient_guardian_the_ancient_treants", context)

	-- PRECACHE HEROES
	-- Precache heroes
	for hero = 1, #HEROLIST do
		PrecacheUnitByNameAsync("npc_dota_hero_"..HEROLIST[hero], context)
	end

	for hero = 1, #HEROLIST_VIP do
		PrecacheUnitByNameAsync("npc_dota_hero_"..HEROLIST_VIP[hero], context)
	end

	PrecacheUnitByNameAsync("npc_dota_hero_antimage", context)
	PrecacheUnitByNameAsync("npc_dota_hero_centaur", context)
	PrecacheUnitByNameAsync("npc_dota_hero_clinkz", context)
	PrecacheUnitByNameAsync("npc_dota_hero_dazzle", context)
	PrecacheUnitByNameAsync("npc_dota_hero_drow_ranger", context)
	PrecacheUnitByNameAsync("npc_dota_hero_earth_spirit", context)
	PrecacheUnitByNameAsync("npc_dota_hero_ember_spirit", context)
	PrecacheUnitByNameAsync("npc_dota_hero_faceless_void", context)
	PrecacheUnitByNameAsync("npc_dota_hero_lifestealer", context)
	PrecacheUnitByNameAsync("npc_dota_hero_lion", context)
	PrecacheUnitByNameAsync("npc_dota_hero_lycan", context)
	PrecacheUnitByNameAsync("npc_dota_hero_magnataur", context)
	PrecacheUnitByNameAsync("npc_dota_hero_morphling", context)
	PrecacheUnitByNameAsync("npc_dota_hero_naga_siren", context)
	PrecacheUnitByNameAsync("npc_dota_hero_ogre_magi", context)
	PrecacheUnitByNameAsync("npc_dota_hero_phoenix", context)
	PrecacheUnitByNameAsync("npc_dota_hero_razor", context)
	PrecacheUnitByNameAsync("npc_dota_hero_silencer", context)
	PrecacheUnitByNameAsync("npc_dota_hero_techies", context)
	PrecacheUnitByNameAsync("npc_dota_hero_templar_assassin", context)
	PrecacheUnitByNameAsync("npc_dota_hero_treant", context)
	PrecacheUnitByNameAsync("npc_dota_hero_warlock", context)
	PrecacheUnitByNameAsync("npc_dota_hero_weaver", context)
	PrecacheUnitByNameAsync("npc_dota_hero_zuus", context)

	PrecacheUnitByNameSync( "npc_dota_hero_skeleton_king_bis", context)
	PrecacheUnitByNameSync( "npc_dota_hero_slardar_bis", context)
	PrecacheUnitByNameSync( "npc_dota_hero_meepo_bis", context)

	PrecacheUnitByNameSync( "npc_spirit_beast", context)
	PrecacheUnitByNameSync( "npc_frost_infernal", context)
	PrecacheUnitByNameSync( "npc_spirit_beast_bis", context)
	PrecacheUnitByNameSync( "npc_frost_infernal_bis", context)

--	-- PRECACHE SOUNDS
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_elder_titan.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_leshrac.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_lycan.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_magnataur.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_medusa.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_monkey_king.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_obsidian_destroyer.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_ogre_magi.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_queenofpain.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_sywrath_mage.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_spectre.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_techies.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_tinker.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_ursa.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_zuus.vsndevts", context )

--	-- Units Precache
	PrecacheUnitByNameSync( "npc_dota_hero_wisp", context) -- For Connecting bug
	PrecacheUnitByNameSync( "npc_dota_lycan_wolf1", context)
	PrecacheUnitByNameSync( "npc_dota_shadowshaman_serpentward", context)
	PrecacheUnitByNameSync( "npc_dota_furbolg", context)
	PrecacheUnitByNameSync( "npc_dota_creature_muradin_bronzebeard", context)

	-- Final Wave
	PrecacheUnitByNameSync( "npc_druid_final_wave", context)
	PrecacheItemByNameSync( "item_tombstone", context )
end

-- Create the game mode when we activate
function Activate()
	GameRules.GameMode = GameMode()
	GameRules.GameMode:InitGameMode()
end
