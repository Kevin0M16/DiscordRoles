------------------------------------------------
--- DiscordRoles by: Kevin0M16 ---
------------------------------------------------

function addToSet(set, key)
    set[key] = true
end

function DistanceBetweenCoords(coordsA, coordsB, useZ)
    -- language faster equivalent:
    local firstVec = vector3(coordsA.x, coordsA.y, coordsA.z)
    local secondVec = vector3(coordsB.x, coordsB.y, coordsB.z)
    if useZ then
        return #(firstVec - secondVec)
    else 
        return #(firstVec.xy - secondVec.xy)
    end
end

function GetPlayersNearPos(pos, maxDistance)    
    local nearbyPlayers = {}
  
    for _, playerId in ipairs(GetPlayers()) do
        local playerPed = GetPlayerPed(playerId)
        local playerPedPos =  GetEntityCoords(playerPed)
        local distance = DistanceBetweenCoords(playerPedPos, pos, true)
  
        if distance < maxDistance then            
            addToSet(nearbyPlayers, playerId)
            if Config.Debug then print("nearbyPlayer: " ..playerId.. " distance: " ..distance) end
        end
    end
  
    return nearbyPlayers
end

RegisterServerEvent("SendProximityChat")
AddEventHandler("SendProximityChat", function(pos, maxDistance, text)
    local name = GetPlayerName(source)
    local color = { 255, 255, 255 }
    local nearbyPlayers = GetPlayersNearPos(pos, maxDistance)
    if Config.Debug then print("name: " ..name.. " svrId: " ..source.. " message: " ..text.. " pos: " ..pos.. " maxDistance: " ..maxDistance) end

    for k, v in pairs(nearbyPlayers) do
        TriggerClientEvent('chatMessage', k, name, color, text)
    end
end)

RegisterServerEvent("SendProximityChat:Faction")
AddEventHandler("SendProximityChat:Faction", function(pos, maxDistance, text)
    local name = GetPlayerName(source)
    local nearbyPlayers = GetPlayersNearPos(pos, maxDistance)
    if Config.Debug then print("name: " ..name.. " svrId: " ..source.. " message: " ..text.. " pos: " ..pos.. " maxDistance: " ..maxDistance) end

    for k, v in pairs(nearbyPlayers) do
        TriggerEvent("SendFactionChat", source, k, name, text)
    end
end)

RegisterServerEvent("SendGlobalChat")
AddEventHandler("SendGlobalChat", function(name, color, text)
    if Config.Debug then print("name: " ..name.. " svrId: " ..source.. " message: " ..text) end

    TriggerClientEvent('chatMessage', -1, name, color, text)
end)

RegisterServerEvent("SendGlobalChat:Faction")
AddEventHandler("SendGlobalChat:Faction", function(text)
    local name = GetPlayerName(source)
    if Config.Debug then print("name: " ..name.. " svrId: " ..source.. " message: " ..text) end 

    TriggerEvent("SendFactionChat", source, -1, name, text)
end)

---------------- NOTES --------------------------------------------------------

--[[ for _, playerId in ipairs(GetPlayers()) do
    local name = GetPlayerName(playerId)
    print(('Player %s with id %i is in the server'):format(name, playerId))
    -- ('%s'):format('text') is same as string.format('%s', 'text)
end ]]

--[[ local function ShowCoordinates()
    local player = source
    local ped = GetPlayerPed(player)
    local playerCoords = GetEntityCoords(ped)

    print(playerCoords) -- vector3(...)    
end
exports('DistanceBetweenCoords', DistanceBetweenCoords ) ]]