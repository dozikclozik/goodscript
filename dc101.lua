local player = game.Players.LocalPlayer
local part = Instance.new("Part", game:GetService("ReplicatedStorage"))
local part2 = Instance.new("Part", game:GetService("ReplicatedStorage"))
part2.Name = "part2"
part2.Anchored = true
part.Anchored = true
local char = player.Character or player.CharacterAdded:Wait()
local hrt = char:WaitForChild("HumanoidRootPart")
local humanoid= char:WaitForChild("Humanoid")
if humanoid and hrt then
    humanoid:GetPropertyChangedSignal("Health"):Connect(function()
        local random = math.random(1,2)
        if random == 1 then
        local clone = part:Clone()
        clone.Parent = workspace
        clone:PivotTo(hrt.CFrame * CFrame.new(-10,0,0))
        
        wait()
        
        hrt.CFrame = clone.CFrame
        wait()
        clone:Destroy()
        end
        if random == 2 then
                local random = math.random(1,2)
                if random == 1 then
                    local clone2 = part2:Clone()
                    clone2.Parent = workspace
                    clone2:PivotTo(hrt.CFrame * CFrame.new(10,0,0))
 
                    wait()
 
                    hrt.CFrame = clone2.CFrame
                    wait()
                    clone2:Destroy()
        end
            end
    end)
end
