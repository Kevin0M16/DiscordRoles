------------------------------------------------
--- DiscordRoles by: Kevin0M16 ---
------------------------------------------------

fx_version 'cerulean'
games { 'gta5' }

author 'Kevin_M16'
description 'Discord Roles in FiveM Chat'
version '2.0.0'

shared_script "config.lua"

server_scripts {
	"emoji/emoji.lua",
	"server/sv_chat.lua",
	"server/sv_prox.lua"
}

client_scripts {
	"client/cl_chat.lua"
}
