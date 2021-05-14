local open = false

local templateMenu = RageUI.CreateMenu("MiraxxR", "Template menu")
templateMenu.Closed = function()
    open = false
    RageUI.Visible(templateMenu, false)
end

function OpenTemplateMenu()
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

RegisterCommand("miraxxr", function(source, args, rawCommand)
    OpenTemplateMenu()
end, false)
