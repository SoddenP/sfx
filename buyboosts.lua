local RunService = game:GetService("RunService")

local buyuluck = {
    [1] = 0,
    [2] = "BoostService",
    [3] = "BuyWithGems",
    [4] = {
        [1] = "UltraLuck",
        [2] = "30Min"
    }
}

local buyluck = {
    [1] = 0,
    [2] = "BoostService",
    [3] = "BuyWithGems",
    [4] = {
        [1] = "Luck",
        [2] = "30Min"
    }
}

local useuluck = {
    [1] = 0,
    [2] = "BoostService",
    [3] = "Use",
    [4] = {
        [1] = "UltraLuck",
        [2] = "30Min"
    }
}

local useluck = {
    [1] = 0,
    [2] = "BoostService",
    [3] = "Use",
    [4] = {
        [1] = "Luck",
        [2] = "30Min"
    }
}

lockcount = 0
lockspurchased = false
local connection
function getdatpeppahoffdere()
    if lockcount < 50 then
        lockcount = lockcount + 1
        game:GetService("ReplicatedStorage").Framework.RemoteFunction:InvokeServer(unpack(buyuluck))   
        game:GetService("ReplicatedStorage").Framework.RemoteFunction:InvokeServer(unpack(buyluck)) 
    else
        lockspurchased = true
        connection:Disconnect()
    end
end
connection = RunService.Heartbeat:Connect(getdatpeppahoffdere)

while not lockspurchased do
    wait()
end

lockcount = 0
lockspurchased = false
local connection2
function getdatpeppahoffdere2()
    if lockcount < 50 then
        lockcount = lockcount + 1
        game:GetService("ReplicatedStorage").Framework.RemoteFunction:InvokeServer(unpack(useuluck))   
        game:GetService("ReplicatedStorage").Framework.RemoteFunction:InvokeServer(unpack(useluck)) 
    else
        lockspurchased = true
        connection2:Disconnect()
    end
end
connection2 = RunService.Heartbeat:Connect(getdatpeppahoffdere2)
