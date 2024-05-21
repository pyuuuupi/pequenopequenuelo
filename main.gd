extends Node2D

var screen_size : Vector2i
var PlayerInitialPosition


func _ready():
	screen_size = get_window().size
	PlayerInitialPosition = $Playerin.position

func new_game():
	$Player.position = PlayerInitialPosition
	$Floor.position.x = 0
	
func game_over():
	GHUD.update_Highscore()

func _process(delta):
	$Floor.position.x = $Playerin.position.x - 150
