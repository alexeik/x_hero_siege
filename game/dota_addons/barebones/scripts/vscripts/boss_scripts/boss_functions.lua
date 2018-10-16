-- Boss-fighting related functions


---------------------
-- Other modifiers
---------------------
LinkLuaModifier("boss_thinker_zeus", "boss_scripts/boss_thinker_zeus.lua", LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier("boss_thinker_venomancer", "boss_scripts/boss_thinker_venomancer.lua", LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier("boss_thinker_treant", "boss_scripts/boss_thinker_treant.lua", LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier("boss_thinker_nevermore", "boss_scripts/boss_thinker_nevermore.lua", LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier("boss_thinker_mega_greevil", "boss_scripts/boss_thinker_mega_greevil.lua", LUA_MODIFIER_MOTION_NONE )

---------------------
-- Other stuff
---------------------

function BossPhaseAbilityCast(team, ability_image, ability_name, delay)
	local ability_cast_timer = 0.0
	Timers:CreateTimer(function()
		CustomGameEventManager:Send_ServerToTeam(team, "BossStartedCast", {ability_image = ability_image, ability_name = ability_name, current_cast_time = ability_cast_timer, cast_time = delay})
		if ability_cast_timer < delay then
			ability_cast_timer = ability_cast_timer + FrameTime()
			return FrameTime()
		elseif ability_cast_timer >= delay then
			ability_cast_timer = 0.0
			CustomGameEventManager:Send_ServerToTeam(team, "BossStartedCast", {ability_image = ability_image, ability_name = ability_name, current_cast_time = ability_cast_timer, cast_time = delay})
		end
	end)
end

function PlaySoundForTeam(team, sound)
	for player_id = 0, 20 do
		if PlayerResource:GetPlayer(player_id) then
			if PlayerResource:GetTeam(player_id) == team then
				EmitSoundOnClient(sound, PlayerResource:GetPlayer(player_id))
			end
		end
	end
end

---------------------
-- Phase transitions
---------------------

function BossPhaseAbilityCastAlt(team, ability_image, ability_name, delay)
	local ability_cast_timer = 0.0
	Timers:CreateTimer(function()
		CustomGameEventManager:Send_ServerToTeam(team, "BossStartedCastAlt", {ability_image = ability_image, ability_name = ability_name, current_cast_time = ability_cast_timer, cast_time = delay})
		if ability_cast_timer < delay then
			ability_cast_timer = ability_cast_timer + FrameTime()
			return FrameTime()
		elseif ability_cast_timer >= delay then
			ability_cast_timer = 0.0
			CustomGameEventManager:Send_ServerToTeam(team, "BossStartedCastAlt", {ability_image = ability_image, ability_name = ability_name, current_cast_time = ability_cast_timer, cast_time = delay})
		end
	end)
end
