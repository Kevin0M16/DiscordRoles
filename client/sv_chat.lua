-- Set Default name for no roles or not found
DefaultName = "Survivors"

-- Set Default color rgb for no roles or not found
DefaultColor = { 0, 255, 0 }

-- Set Roles from Discord Role ID - Change 000000000000000000 to Role ID
keyRoles = {
    ["000000000000000000"] = {  -- Discord Role ID
        name = "Owner",         -- Discord Role Name
        color = { 255, 150, 0 } -- Color rgb
    },
    ["000000000000000000"] = {
        name = "Co-Owner",
        color = { 255, 255, 0 }
    },
    ["000000000000000000"] = {
        name = "Developer", 
        color = { 23, 228, 228 } 
    },
    ["000000000000000000"] = { 
        name = "Manager", 
        color = { 0, 150, 255 } 
    },
    ["000000000000000000"] = { 
        name = "ServerBooster", 
        color = { 255, 26, 198 } 
    }
}

----------------------- Code ---------------------------------------------------------

function Emojit(text)
    for i = 1, #emoji do
      for k = 1, #emoji[i][1] do
        text = string.gsub(text, emoji[i][1][k], emoji[i][2])
      end
    end
    return text
end

AddEventHandler('chatMessage', function(Source, Name, Msg)
    args = stringsplit(Msg, " ")
    CancelEvent()
    if string.find(args[1], "/") then
        local cmd = args[1]
        table.remove(args, 1)
    else
        local src = Source
        local title
        local text
        local color = DefaultColor
        
        for k, v in ipairs(GetPlayerIdentifiers(src)) do
            if string.sub(v, 1, string.len("discord:")) == "discord:" then
                identifierDiscord = v
            end
        end

        if identifierDiscord then
            usersRoles = exports.discord_perms:GetRoles(src)
           
            local function setContains(set, key)
                return set[key] ~= nil
            end

            if usersRoles then 
                for i, role in ipairs(usersRoles) do
                    --print("role: " .. role)

                    if setContains(keyRoles, role) then
                        --print("name: " ..keyRoles[role].name)                                

                        if not text then
                            text = keyRoles[role].name
                            color = keyRoles[role].color
                        else
                            text = text .. " | " .. keyRoles[role].name                        
                        end                    
                    end
                end
            end

            if text then
                --emojis in name
                Msg = Emojit(Msg)
                
                --emojis in text chat
                text = Emojit(text)

                TriggerClientEvent('chatMessage', -1, text .. " | " .. Name, color, Msg)
            else
                -- Set 
                TriggerClientEvent('chatMessage', -1, DefaultName .. " | " .. Name, color, Msg)
            end
        else
            TriggerClientEvent('chatMessage', -1, DefaultName .. " | " .. Name, color, Msg)
            print("Discord was not detected.")
        end
    end
end)

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