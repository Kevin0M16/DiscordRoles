# DiscordRoles
Discord Roles sync with FiveM Chat


### Requirements:

  [Discord Role For Permission Script](https://github.com/sadboilogan/discord_perms)
  
  
  ### How to Use

  1. Add to resources folder.

  2. Add to server.cfg
  
    ensure DiscordRoles
    
  3. Set Discord Role ID's, Role Names, and Role colors in sv_chat.lua
  
    -- Set Roles from Discord Role ID - Change 000000000000000000 to Role ID
    keyRoles = {
        ["000000000000000000"] = {  -- Discord Role ID
            name = "Example",       -- Discord Role Name
            color = { 255, 150, 0 } -- Color rgb
        }
    }
    
    
#### Credits:

  * [discord_perms](https://github.com/sadboilogan/discord_perms)
  * [rolesFX](https://forum.cfx.re/t/release-chat-roles-updated-5-30-18-tutorial-released/28510)
