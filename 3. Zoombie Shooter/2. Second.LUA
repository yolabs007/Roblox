local seconds=script.Parent.Parent.Timer
script.Parent.Text=seconds.Value
repeat
	wait(0.5)
	if script.Parent.Text~="Congratulations\n\nYou Won" and script.Parent.Text~="OOPS!!!     You lose" then
		seconds.Value=seconds.Value -1
		script.Parent.Text=seconds.Value
	end
until script.Parent.Text=="Congratulations\n\nYou Won" or script.Parent.Text=="OOPS!!!     You lose"
