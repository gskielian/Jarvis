(*Instead of using the spotlight app, this opens a new terminal directly*)

tell application "Terminal"
	activate
	set currentTab to do script ("say hi")
	set mainID to id of front window
	set toggle to 1
	delay 0.1
	set thetimeout to 100
	repeat until toggle ≥ thetimeout
		if busy of currentTab is false then
			close (every window whose id = mainID)
			set toggle to thetimeout
		end if
		set toggle to (toggle + 1)
		delay 0.1
	end repeat
end tell
