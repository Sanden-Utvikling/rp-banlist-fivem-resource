print("RP Banlist resource starting!")


if Config.show then
    print("RP Banlist config loaded!")

    -- Add code to fetch current connected client
    -- Config.print(Config.apikey)
end

AddEventHandler('txAdmin:events:playerBanned', function(eventData)
    print("Player banned!")
    print(eventData)
    -- Add code to ban player in RP Banlist
end)