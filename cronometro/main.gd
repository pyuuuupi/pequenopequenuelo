extends Control
signal start_timer

var is_timer = false 

var seconds = 0
var minutes = 0
var hours = 0

func _update_seconds_label():
	seconds = + 1
	$SecondsLabel.text = "seconds: %d"%(seconds)

func _update_minutes_label():
 	if seconds < 59 :
		seconds = 0
		minutes =  1
		$minutesLabel.text = "minutes : %d"%(minutes)


