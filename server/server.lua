RegisterCommand("carwipe", function(source, args, rawCommand) 
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.6vw; margin: 0.6vw; background-color: rgba(255, 0, 0, 0.4); border-radius: 3px;">🚗Car Wipe🚗<br> {1}<br></div>',
            args = {"^1ANNOUNCEMENT: ", "Car Wipe In 20 Seconds!", table.concat(args, " ")}
            })
            
    Citizen.Wait(20000)
    TriggerClientEvent("Clif:carwipe", -1) 
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.6vw; margin: 0.6vw; background-color: rgba(255, 0, 0, 0.4); border-radius: 3px;">🚗Car Wipe🚗:<br> {1}<br></div>',
            args = {"^1ANNOUNCEMENT: ", "Done!", table.concat(args, " ")}
            })
    end, true)
    


RegisterNetEvent("Clif:AutoCarWipe")
AddEventHandler('Clif:AutoCarWipe', function()
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(60000) 
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div style="padding: 0.6vw; margin: 0.6vw; background-color: rgba(255, 0, 0, 0.4); border-radius: 3px;">🚗Car Wipe🚗<br> {1}<br></div>',
                args = {"^1ANNOUNCEMENT: ", "Car Wipe In 15 minutes!"}
                    })

            Citizen.Wait(840000) 
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div style="padding: 0.6vw; margin: 0.6vw; background-color: rgba(255, 0, 0, 0.4); border-radius: 3px;">🚗Car Wipe🚗:<br> {1}<br></div>',
                args = {"^1ANNOUNCEMENT: ", "Car Wipe In 1 minute!", }
                    })

            Citizen.Wait(50000) 
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div style="padding: 0.6vw; margin: 0.6vw; background-color: rgba(255, 0, 0, 0.4); border-radius: 3px;">🚗Car Wipe🚗:<br> {1}<br></div>',
                args = {"^1ANNOUNCEMENT: ", "Car Wipe In 10 seconds!", }
                    })
                    
            Citizen.Wait(10000)
            TriggerClientEvent("Clif:carwipe", -1) 
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div style="padding: 0.6vw; margin: 0.6vw; background-color: rgba(255, 0, 0, 0.4); border-radius: 3px;">🚗Car Wipe🚗:<br> {1}<br></div>',
                args = {"^1ANNOUNCEMENT: ", "Done!", }
                    }) 
          Citizen.Wait(5000) 
        end
      end)
end, true)



AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        TriggerEvent("Clif:AutoCarWipe")
    end
end, true)