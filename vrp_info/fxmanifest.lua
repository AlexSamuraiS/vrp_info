fx_version 'adamant'
game 'gta5'
author 'AlexSamurai'

ui_page 'design/index.html'

client_scripts {
	'client.lua'
}

server_scripts {
    '@vrp/lib/utils.lua',
    "server.lua"
}

files {
    'design/index.html',
    'design/style.css',
    'design/java.js',
    'design/photos/*.png'
}