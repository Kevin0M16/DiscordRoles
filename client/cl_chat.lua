------------------------------------------------
--- DiscordRoles by: Kevin0M16 ---
------------------------------------------------

-- me proximity
TriggerEvent('chat:addSuggestion', '/me', 'me proximity chat', {
  { name="message", help="/me [message]" }
})
RegisterCommand('me', function(source, args, rawCommand)
  TriggerServerEvent('txaLogger:CommandExecuted', rawCommand)    
  local text = table.concat(args, " ")
  local mPlayerPed = GetPlayerPed(-1)
  local mPlayerPedPos = GetEntityCoords(mPlayerPed)

  TriggerServerEvent("SendProximityChat:Faction", mPlayerPedPos, Config.Prox.MaxDistance, "[Me] " ..text)
end, false)

--[[ 
-- do proximity
TriggerEvent('chat:addSuggestion', '/do', 'do proximity chat', {
	{ name="message", help="/me [message]" }
})
RegisterCommand('do', function(source, args, rawCommand)
  TriggerServerEvent('txaLogger:CommandExecuted', rawCommand)    
  local text = table.concat(args, " ")
  local mPlayerPed = GetPlayerPed(-1)
  local mPlayerPedPos = GetEntityCoords(mPlayerPed)

  TriggerServerEvent("SendProximityChat", mPlayerPedPos, maxDistance, "[Do] " ..text)
end, false) 
]]

-- radio transmission
TriggerEvent('chat:addSuggestion', '/r', 'radio transmission chat', {
	{ name="message", help="/r [message]" }
})
RegisterCommand('r', function(source, args, rawCommand)
  TriggerServerEvent('txaLogger:CommandExecuted', rawCommand) 
  local name = GetPlayerName(PlayerId())
  --local color = { 30, 144, 255 }
  local text = table.concat(args, " ")  

  TriggerServerEvent("SendGlobalChat", "^0[^4Radio Transmission^0] " ..name, Config.Colors.r, text)
  --TriggerClientEvent('chatMessage', -1,"^0[^4Radio Transmission^0]: " ..name, {30, 144, 255}, message)
end, false)

-- anonymous transmission
TriggerEvent('chat:addSuggestion', '/anon', 'anonymous transmission chat', {
	{ name="message", help="/anon [message]" }
})
RegisterCommand('anon', function(source, args, rawCommand)
  TriggerServerEvent('txaLogger:CommandExecuted', rawCommand) 
  local name = GetPlayerName(PlayerId())
  --local color = { 150, 150, 175 } --{ 115, 12, 5 }
  local text = table.concat(args, " ")

  TriggerServerEvent("SendGlobalChat", "[Anonymous Transmission] ", Config.Colors.anon, text)
  --TriggerClientEvent('chatMessage', -1,"[Anonymous Transmission]: ",{115, 12, 5}, message)
end, false)

-- out of character chat
TriggerEvent('chat:addSuggestion', '/ooc', 'out of character chat', {
	{ name="message", help="/ooc [message]" }
})
RegisterCommand('ooc', function(source, args, rawCommand)
  TriggerServerEvent('txaLogger:CommandExecuted', rawCommand) 
  local name = GetPlayerName(PlayerId())
  --local color = { 128, 128, 128 }
  local text = table.concat(args, " ")

  TriggerServerEvent("SendGlobalChat", "OOC | " ..name, Config.Colors.ooc, text)
  --TriggerClientEvent('chatMessage', -1, "OOC | " ..name, {128, 128, 128}, message)
end, false)

-- open broadcast
TriggerEvent('chat:addSuggestion', '/op', 'open broadcast chat', {
	{ name="message", help="/op [message]" }
})
RegisterCommand('op', function(source, args, rawCommand)
  TriggerServerEvent('txaLogger:CommandExecuted', rawCommand) 
  local name = GetPlayerName(PlayerId())
  --local color = { 255, 0, 0 }
  local text = table.concat(args, " ")

  TriggerServerEvent("SendGlobalChat", "[Open Broadcast] " ..name, Config.Colors.op, text)
  --TriggerClientEvent('chatMessage', -1, "^1[Open Broadcast]: " ..name, {255,215,0}, message)
end, false)

-- announcement
TriggerEvent('chat:addSuggestion', '/an', 'announcement chat', {
	{ name="message", help="/an [message]" }
})
RegisterCommand('an', function(source, args, rawCommand)
  TriggerServerEvent('txaLogger:CommandExecuted', rawCommand) 
  local name = GetPlayerName(PlayerId())
  -- local color = { 255, 215, 0 }
  local text = table.concat(args, " ")

  TriggerServerEvent("SendGlobalChat", "[ANNOUNCEMENT] " ..name, Config.Colors.an, text)
  --TriggerClientEvent('chatMessage', -1, "^3[ANNOUNCEMENT] " ..name, {255,215,0}, message)
end, true)

-- advertisement
TriggerEvent('chat:addSuggestion', '/ad', 'advertisement chat', {
	{ name="message", help="/ad [message]" }
})
RegisterCommand('ad', function(source, args, rawCommand)
  TriggerServerEvent('txaLogger:CommandExecuted', rawCommand) 
  local name = GetPlayerName(PlayerId())
  --local color = { 255, 0, 0 }
  local text = table.concat(args, " ")

  TriggerServerEvent("SendGlobalChat", "[ADVERT] " ..name, Config.Colors.ad, text)
  --TriggerClientEvent('chatMessage', -1, "^1[ADVERT]: " ..name, {255,215,0}, message)
end, false)
