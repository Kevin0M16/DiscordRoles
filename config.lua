------------------------------------------------
--- DiscordRoles by: Kevin0M16 ---
------------------------------------------------
Config = {
    Debug = false,
    -- Set Default name for no roles or not found
    DefaultName = "Survivor",
    -- Set Default color rgb for no roles or not found
    DefaultColor = { 0, 255, 0 }
}

Config.Prox = {
    MaxDistance = 250
}

Config.Colors = {
    r = { 30, 144, 255 },
    anon = { 150, 150, 175 },
    ooc = { 128, 128, 128 },
    op = { 255, 0, 0 },
    an = { 255, 215, 0 },
    ad = { 255, 0, 0 }
}

Config.Roles = {
    -- Set Roles from Discord Role ID - Change 000000000000000000 to Role ID
    staffRoles = {
        ["000000000000000000"] = {  -- Discord Role ID
            name = ":computer: Owner",-- Discord Role Name
            color = { 0, 255, 255 } -- Color rgb
        },
        ["000000000000000000"] = {
            name = "Co-Owner",
            color = { 255, 255, 224 }
        },
        ["000000000000000000"] = {
            name = ":stop_sign: Head Admin", 
            color = { 27, 254, 206 } 
        },
        ["000000000000000000"] = {
            name = ":stop_sign: Developer", 
            color = { 61, 52, 235 }
        },
        ["000000000000000000"] = { 
            name = ":stop_sign: Admin", 
            color = { 0, 77, 13 } --132, 61, 164
        },
        ["000000000000000000"] = { 
            name = ":stop_sign: Moderator", 
            color = { 173, 216, 230 }
        },
        ["000000000000000000"] = { 
            name = "Platinum Supporter", 
            color = { 174, 255, 207 }
        },
        ["000000000000000000"] = { 
            name = "Diamond Supporter", 
            color = { 185, 242, 255 }
        },
        ["000000000000000000"] = { 
            name = "Gold Supporter", 
            color = { 255, 152, 0 }
        },
        ["000000000000000000"] = { 
            name = "Silver Supporter", 
            color = { 189, 189, 189 }
        },
        ["000000000000000000"] = { 
            name = "Bronze Supporter", 
            color = { 139, 87, 0 }
        }
    },
    factionRoles = { 
        ["000000000000000000"] = { --
            name = ":skull_crossbones: Faction 1",
            color = { 255, 0, 0 }
        },    
        ["000000000000000000"] = { --
            name = ":small_orange_diamond: Faction 2",
            color = { 255, 162, 0 }
        },     
        ["000000000000000000"] = { --
            name =  "Faction 3",
            color = { 15, 18, 16 }
        },
        ["000000000000000000"] = { --
           name =  "Faction 4",
           color = { 61, 7, 5 }  
        }
    }
}
