local Camera = workspace.CurrentCamera
local Mouse = game:GetService('Players').LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService('RunService')
local Locked = false
local Player = nil

UserInputService.InputBegan:Connect(function(KeyCode,chatting)
	if KeyCode.UserInputType == Enum.UserInputType.MouseButton3 then
		if not Locked then
			if Mouse.Target ~= nil then
				if Mouse.Target.Parent:FindFirstChild('Humanoid') then
					Locked = true
					Player = Mouse.Target.Parent
				end
			end
		else
			Locked = false
			Player = nil
		end
	end
end)

Mouse.Button2Down:Connect(function()
	if not Locked then
		if Mouse.Target ~= nil then
			if Mouse.Target.Parent:FindFirstChild('Humanoid') then
				Locked = true
				Player = Mouse.Target.Parent
			end
		end
	else
		Locked = false
		Player = nil
	end
end)

spawn(function()
	RunService.RenderStepped:Connect(function()
		if Locked == true then
			if Player ~= nil then
				Camera.CFrame = CFrame.lookAt(Camera.CFrame.Position+Vector3.new(0,2,0),Player.HumanoidRootPart.Position)
			end
		end
	end)
end)