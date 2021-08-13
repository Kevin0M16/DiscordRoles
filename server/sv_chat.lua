------------------------------------------------
--- DiscordRoles by: Kevin0M16 ---
------------------------------------------------

function Emojit(text)
    for i = 1, #emoji do
      for k = 1, #emoji[i][1] do
        text = string.gsub(text, emoji[i][1][k], emoji[i][2])
      end
    end
    return text
end

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

RegisterServerEvent("SendFactionChat")
AddEventHandler("SendFactionChat", function(srcId, destId, Name, Msg)
    local src = srcId
    local identifiers = GetPlayerIdentifiers(src)
    local title
    local text
    local color = Config.DefaultColor
        
    for k, v in ipairs(identifiers) do
        if string.sub(v, 1, string.len("discord:")) == "discord:" then
            identifierDiscord = v
            break
        end
    end

    if identifierDiscord then
        usersRoles = exports.NetworkSecurity:GetRoles(src)
        --usersRoles = exports.discord_perms:GetRoles(src)
       
        local function setContains(set, key)
            return set[key] ~= nil
        end

        if usersRoles then
            for i, role in ipairs(usersRoles) do
                --print("role: " .. role)

                if setContains(Config.Roles.staffRoles, role) then
                    --print("name: " ..Config.Roles.staffRoles[role].name)                                

                    if not text then
                        text = Config.Roles.staffRoles[role].name
                        color = Config.Roles.staffRoles[role].color
                    else
                        text = text .. " | " .. Config.Roles.staffRoles[role].name                        
                    end                    
                end
            end

            for i, role in ipairs(usersRoles) do
                --print("role: " .. role)

                if setContains(Config.Roles.factionRoles, role) then
                    --print("name: " ..Config.Roles.factionRoles[role].name)                                

                    if not text then
                        text = Config.Roles.factionRoles[role].name
                        color = Config.Roles.factionRoles[role].color
                    else
                        text = text .. " | " .. Config.Roles.factionRoles[role].name                        
                    end                    
                end
            end

            if text then
                --emojis in name
                Msg = Emojit(Msg)
                
                --emojis in text chat
                text = Emojit(text)
    
                TriggerClientEvent('chatMessage', destId, text .. " | " .. Name, color, Msg)
            else
                -- Send for default 
                TriggerClientEvent('chatMessage', destId, Config.DefaultName .. " | " .. Name, color, Msg)
            end
        else
            -- Send for default 
            TriggerClientEvent('chatMessage', destId, Config.DefaultName .. " | " .. Name, color, Msg)
        end        
    else
        -- Send for default 
        TriggerClientEvent('chatMessage', destId, Config.DefaultName .. " | " .. Name, color, Msg)
        print("Discord was not detected.")
    end
end)

AddEventHandler('chatMessage', function(Source, Name, Msg)
    args = stringsplit(Msg, " ")
    CancelEvent()
    if string.find(args[1], "/") then
        local cmd = args[1]
        table.remove(args, 1)
    else
        TriggerEvent("SendFactionChat", Source, -1, Name, Msg)
    end
end)

RegisterCommand('debugroles', function(source, args, rawCommand)
    TriggerEvent('txaLogger:CommandExecuted', rawCommand) 
    local argument1 = args[1]

    if argument1 == "on" then
        if not Config.Debug then
            Config.Debug = true
            print("DiscordRoles debug on")
        end
    end

    if argument1 == "off" then
        if Config.Debug then
            Config.Debug = false
            print("DiscordRoles debug off")
        end
    end
  end, true)
  