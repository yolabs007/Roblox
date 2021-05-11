repeat
	wait(0.5)
	if script.Parent.Text>="99" then
		local children=game.Workspace:GetChildren()
		count=#children
	end	
	local children=game.Workspace:GetChildren()
	local newcount=#children
	print(count,newcount)
	if (count==newcount+6 and script.Parent.Text>="1") then
		script.Parent.Text="Congratulations\n\nYou Won"
		script.Parent.Size=UDim2.new(0,514,0,366)
		script.Parent.TextColor3=Color3.new(0, 0, 1)
		script.Parent.BorderSizePixel=15
		break
	elseif (script.Parent.Text=="0") then
		script.Parent.Text="OOPS!!!     You lose"	
		script.Parent.Size=UDim2.new(0,514,0,366)
		script.Parent.TextColor3=Color3.new(0, 0, 1)
		script.Parent.BorderSizePixel=15
	end
until script.Parent.Text=="Congratulations\n\nYou Won" or script.Parent.Text=="OOPS!!!     You lose"
