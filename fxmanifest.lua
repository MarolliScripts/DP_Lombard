fx_version 'cerulean'
game 'gta5'
lua54 'yes'
version '1.0'

author 'Marolli'
description 'Skrypcior odpowiadający za lombard'

client_scripts {
	'config.lua',
	'client/*.lua'
}

server_scripts {
	'config.lua',
	'server/*.lua',
	'@oxmysql/lib/MySQL.lua'
}

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua'
}

escrow_ignore {
	'config.lua',
	'client/target.lua'
}