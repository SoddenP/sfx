-- made by your mom

local args = {
    [1] = 0,
    [2] = "EnchanterServer",
    [3] = "Buy",
    [4] = {}
}

local notupgraded = true

while notupgraded do
    
    matches = 0
    local item = game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"].Enchanter.Item.Value
    
    if item then
    
        local s1 = string.split(item.Config.Enchant1.Value, '"')
        local s2 = string.split(item.Config.Enchant2.Value, '"')
        local s3 = string.split(item.Config.Enchant3.Value, '"')
        local s4 = string.split(item.Config.Enchant4.Value, '"')
        
        local e1 = s1[2]
        local e2 = s2[2]
        local e3 = s3[2]
        local e4 = s4[2]
        
        for i = 1, #lookingfor do
            
            if lookingfor[i]:match(e1) then
                if (string.len(e1) >= string.len(lookingfor[i])) then
                    matches = matches + 1
                end
            end
            
            if lookingfor[i]:match(e2) then
                if (string.len(e2) >= string.len(lookingfor[i])) then
                    matches = matches + 1
                end
            end
            
            if lookingfor[i]:match(e3) then
                if (string.len(e3) >= string.len(lookingfor[i])) then
                    matches = matches + 1
                end
            end
            
            if lookingfor[i]:match(e4) then
                if (string.len(e4) >= string.len(lookingfor[i])) then
                    matches = matches + 1
                end
            end
            
        end
        
        if (matches > 0) then
            
            notupgraded = false
            
        else
            
            game:GetService("ReplicatedStorage").Framework.RemoteFunction:InvokeServer(unpack(args))
            
        end
        
    else
        
        break
        
    end
    
    wait()
    
end
