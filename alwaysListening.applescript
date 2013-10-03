(*Instead of using the spotlight app, this opens a new terminal directly*)

tell application "Terminal"
	
	(*names currentTab  need to find a more elegant method*)
	
	repeat
		set currentTab to do script "~/jarvis.sh"
		
		activate currentTab
		set mainID to id of front window
		(*opens up speech-to-text*)
		tell application "System Events" to key code 63
		tell application "System Events" to key code 63
		delay 4
		
		(*presses "enter" on DictationIM*)
		tell application "System Events" to tell process "DictationIM"
			click button 1
		end tell
		delay 1.2
		
		
		(*presses "enter" in the terminal*)
		tell application "System Events" to key code 36
		
		
		(*closes the terminal when process is completed*)
		set toggle to 1
		delay 0.1
		set thetimeout to 1000
		
		repeat until toggle ≥ thetimeout
			if busy of currentTab is false then
				close (every window whose id = mainID)
				set toggle to thetimeout
			end if
			set toggle to (toggle + 1)
			delay 0.1
		end repeat
		
	end repeat
end tell
