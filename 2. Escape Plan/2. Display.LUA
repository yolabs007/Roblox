local sp = script.Parent
local db = true
local gui = script.Parent.Gui

sp.Touched:connect(function(hit)
	if hit and hit.Parent:findFirstChild("Humanoid") and db then 
		db = false
		local player = game.Players:GetPlayerFromCharacter(hit.Parent)
		if not player.PlayerGui:findFirstChild("Pop up") then 
			local newqui = gui:Clone()
			newqui.Parent = player.PlayerGui
			wait(3) -- This is the time the GUI shows up
			newqui:Destroy() -- If you don't want the GUI to appear again, then don't touch this line but if you want the GUI to repeat whenever the player touches the part, just remove this
		end

		db = true
	end
end)
