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
        ["759192534323822622"] = {  -- Discord Role ID
            name = ":computer: Lead Developer",-- Discord Role Name
            color = { 0, 255, 255 } -- Color rgb
        },
        ["759181613892108329"] = {
            name = "Co-Owner",
            color = { 255, 255, 224 }
        },
        ["763286748137652224"] = {
            name = ":stop_sign: Head Admin", 
            color = { 27, 254, 206 } 
        },   
        ["834617915625701386"] = {
            name = ":stop_sign: Senior Admin", 
            color = { 237, 205, 85 }
        },
        ["789265857372094555"] = { 
            name = "Map Developer", 
            color = { 128, 232, 254 }
        },
        ["792273521714921513"] = {
            name = ":stop_sign: Developer", 
            color = { 61, 52, 235 }
        },
        ["842753516287164468"] = {
            name = "Developer Jr", 
            color = { 146, 22, 13 }
        },
        ["791014480233627658"] = { 
            name = ":stop_sign: Admin", 
            color = { 0, 77, 13 } --132, 61, 164
        },
        ["791014580327022643"] = { 
            name = ":stop_sign: Moderator", 
            color = { 173, 216, 230 }
        },
        ["791101198690156604"] = {
            name = ":stop_sign: Trial-Moderator", 
            color = { 172, 106, 101 }
        },
        ["837790944551501826"] = { 
            name = "Test Staff", 
            color = { 197, 197, 197 }
        },
        ["799774726774849546"] = { 
            name = "Platinum Supporter", 
            color = { 174, 255, 207 }
        },
        ["763306931959365642"] = { 
            name = "Diamond Supporter", 
            color = { 185, 242, 255 }
        },
        ["796847212159041586"] = { 
            name = "Gold Supporter", 
            color = { 255, 152, 0 }
        },
        ["799098214879985684"] = { 
            name = "Silver Supporter", 
            color = { 189, 189, 189 }
        },
        ["799097649327243284"] = { 
            name = "Bronze Supporter", 
            color = { 139, 87, 0 }
        }
    },
    factionRoles = { 
        ["778852616062894080"] = { --
            name = ":skull_crossbones: The Depths",
            color = { 255, 0, 0 }
        },    
        ["803825153590820865"] = { --
            name = ":small_orange_diamond: Black Tusk",
            color = { 255, 162, 0 }
        },     
        ["834895104350879754"] = { --
            name =  "SPEAR",
            color = { 15, 18, 16 }
        },
        ["869344750522736681"] = { --
           name =  "EIROforum",
           color = { 61, 7, 5 }  
        },               
        ["852216029513121844"] = { --
           name =  "The Greyhounds",
           color = { 0, 0, 139 }
        },   
        ["855907194507755520"] = { --
            name =  "Swamp Rats",
            color = { 0, 81, 44 }
        },
        ["860328087546757161"] = { --
            name =  "The Trackers",
            color = { 255, 255, 0 }
        },
        ["870752511106089002"] = { --
            name =  "Athena Central",
            color = { 251, 250, 243 }  
        }
    }
}
