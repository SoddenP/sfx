active = true
key = key or "Q"
local UserInputService = game:GetService("UserInputService")
function update()
   for i=1,3 do
       pcall(function()
           local sgui = Instance.new("ScreenGui")
           sgui.Parent = game.CoreGui
           local lookat = game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"]["Ascender" .. i].Item.Value.Main.Gui
           local frame = Instance.new("Frame", sgui)
           frame.Size = UDim2.new(0, size, 0, size)
           frame.Transparency = 0.5
           if i == 1 then
               frame.Position = UDim2.new(0.2, 0, 0.02, 0)
           elseif i == 2 then
               frame.Position = UDim2.new(0.45, 0, 0.02, 0)
           else
               frame.Position = UDim2.new(0.7, 0, 0.02, 0)
           end
           for i, v in pairs(lookat:Clone():GetChildren()) do
               v.Parent = frame
           end
           if not active then
               frame.Visible = false
           end
       end)
   end
end
function remove()
   for i, v in pairs(game.CoreGui:GetChildren()) do
       if v.Name == "ScreenGui" then
           v:Destroy()
       end
   end
end
UserInputService.InputBegan:Connect(function(input, typing)
    if not typing then
        if input.KeyCode == Enum.KeyCode[key] then
            if active then
                active = false
            else
                active = true
            end
        end
    end
end)
while true do
   if (game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"].Ascender1.Item.Value) or (game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"].Ascender2.Item.Value) or (game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"].Ascender3.Item.Value) then
       update()
       task.wait(1)
       remove()
   else
       task.wait()
   end
end
