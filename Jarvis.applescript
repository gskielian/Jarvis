tell application "System Events" to key code 49 using {command down}
delay 0.3
tell application "System Events" to keystroke "terminal"
tell application "System Events" to key code 36
delay 0.3
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
