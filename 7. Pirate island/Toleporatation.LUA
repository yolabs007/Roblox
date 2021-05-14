local Pad1 = game.Workspace.TeleportPad2

script.Parent.Touched:Connect(function(touchPart)
	if touchPart and touchPart.Parent and touchPart.Parent.Humanoid and touchPart.Parent.currentlyTeleporting.Value == false then
		local Character = touchPart.Parent
		local teleportLocation = CFrame.new(Pad1.CFrame.X, Pad1.CFrame.Y + 5, Pad1.CFrame.Z)
		Character:SetPrimaryPartCFrame(teleportLocation)

		local teleportingValue = Character.currentlyTeleporting
		teleportingValue.Value = true
		wait(3)
		teleportingValue.Value = false
	end
end)
