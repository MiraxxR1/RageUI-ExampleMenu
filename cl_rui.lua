local open = false

local templateMenu = RageUI.CreateMenu("MiraxxR", "Template menu")
templateMenu.Closed = function()
    open = false
    RageUI.Visible(templateMenu, false)
end

function OpenTemplateMenu()
    if open == false then
        if open then
            open = false
            RageUI.Visible(templateMenu, false)
        else
            open = true
            RageUI.Visible(templateMenu, true)
            Citizen.CreateThread(function()
                while open do
                    RageUI.IsVisible(templateMenu, function()

                    end)
                    Wait(1)
                end
            end)
        end
    end
end

-- Command : /miraxxr
RegisterCommand("miraxxr", function(source, args, rawCommand)
    OpenTemplateMenu()
end, false)

-- Press E to open the menu
Keys.Register('E', 'E', 'Open rage template menu', function()
    OpenTemplateMenu()
end)

Alvys.Utils.Print("RageUI - TemplateMenu by MiraxxR#7492 : https://github.com/MiraxxR1/RageUI-TemplateMenu")
