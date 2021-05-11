local lava = script.Parent
lava.Touched:Connect(function(part)
	if part.Parent:FindFirstChild("Humanoid") then
		part.Parent.Humanoid.Health = 0
	end
end)
