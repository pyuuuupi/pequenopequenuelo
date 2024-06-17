extends CanvasLayer

signal start_game_btn

var score = 0
var Highscore = 0
var is_playing = false
var mob_counter = 0

func update_score_label():
	score = score + 10
	$ScoreLabel.text = "score: %d"%(score)

func update_Highscore():
	if score > Highscore:
		Highscore = score
		$Highscore.text = "High score: %d"%(Highscore)
	is_playing=false
 
func _on_button_pressed():
	start_game_btn.emit()
	is_playing = true
	$ScoreTimer.start()
	$Button.visible = false


func _on_score_timer_timeout():
	update_score_label()

