extends CanvasLayer

var score = 0
var Highscore = 0
var is_playing = false

func update_score_label():
	score = score + 10
	$ScoreLabel.text = "score: %d"%(score)

func update_Highscore():
	if score > Highscore:
		Highscore = score
		$Highscore.text = "High score: %d"%(Highscore)
 
func _on_button_pressed():
	is_playing = true
	$ScoreTimer.start()
	$Button.visible = false


func _on_score_timer_timeout():
	update_score_label()
