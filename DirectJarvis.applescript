(*Instead of using the spotlight app, this opens a new terminal directly*)

tell application "Terminal"
	activate

tell application "System Events" to keystroke "./jarvis.sh \"\""
tell application "System Events" to key code 123

tell application "System Events" to key code 63
tell application "System Events" to key code 63
delay 4
tell application "System Events" to tell process "DictationIM"
	click button 1
end tell
delay 1.2
tell application "System Events" to key code 36



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
