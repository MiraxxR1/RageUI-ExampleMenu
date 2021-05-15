fx_version 'adamant'
game 'gta5'

name 'RageUI-TemplateMenu'
author 'MiraxxR'
contact 'MiraxxR#7492'
repository 'https://github.com/MiraxxR1/RageUI-TemplateMenu'
description 'It is a menu that logically does not consume since it does not run all the time. You can take the code as an example. The resource is not plug n play you will need to change the fxmanifest.lua and consumes 0.01ms. Discord: https://discord.gg/tR4f4af4Mt'

dependencies {'RageUI'}

client_scripts {
    "@Alvys/modules/Utils/sh_shared.lua",
    '@Alvys/modules/RageUI/RMenu.lua',
    '@Alvys/modules/RageUI/menu/RageUI.lua',
    '@Alvys/modules/RageUI/menu/Menu.lua',
    '@Alvys/modules/RageUI/menu/MenuController.lua',
    '@Alvys/modules/RageUI/components/*.lua',
    '@Alvys/modules/RageUI/menu/elements/*.lua',
    '@Alvys/modules/RageUI/menu/items/*.lua',
    '@Alvys/modules/RageUI/menu/panels/*.lua',
    '@Alvys/modules/RageUI/menu/windows/*.lua',
    "cl_rui.lua"
}
