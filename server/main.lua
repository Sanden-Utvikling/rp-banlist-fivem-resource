print("RP Banlist resource starting!")

if Config.apikey == "" then
    print("Api key is missing from config.lua!")
else 
    PerformHttpRequest("https://api.rpbanlist.no/app/me", function (errorCode, resultData, resultHeaders, errorData)
        local json_decoded = json.decode(resultData)
        local client_name = json_decoded["client_name"]
        print("Connected to RP Banlist API! With current client: " .. client_name)
      end, "GET", "", {Authorization = "Bearer " .. Config.apikey})
end

AddEventHandler('txAdmin:events:playerBanned', function(eventData)
    print("Player banned!")
    print(tostring(eventData))
    print(tostring(eventData.reason))
    -- Add code to ban player in RP Banlist
end)