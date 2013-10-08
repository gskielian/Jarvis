(*Instead of using the spotlight app, this opens a new terminal directly*)

tell application "Terminal"
	
	(*opens up speech-to-text*)
	delay 0.5
	tell application "System Events" to key code 63
	tell application "System Events" to key code 63
	delay 2
	
	(*presses "enter" on DictationIM*)
	tell application "System Events" to tell process "DictationIM"
		click button 1
	end tell
	delay 2
	
	(*presses "enter" in the terminal*)
	tell application "System Events" to key code 36
	
	
end tell
