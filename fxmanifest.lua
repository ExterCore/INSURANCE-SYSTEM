fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'sobing4413'

description 'insurance system'

shared_scripts {
    '@ox_lib/init.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'impound.lua'
}