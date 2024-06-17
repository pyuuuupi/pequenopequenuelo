extends Node2D

@export var mob_scene: PackedScene

var screen_size: Vector2i
var PlayerinInitialPosition


func ready():
	screen_size = get_window().size
	PlayerinInitialPosition = $Playerin.position
	GHUD .start_game_btn .connect(new_game)


func new_game():
	$Playerin .position = PlayerinInitialPosition
	$Floor.position.x = 0
	$MobTimer.start()
 

func game_over():
	GHUD.mob_counter = 0
	$MobTimer.stop()
	GHUD.update_highscore()

 
func _process(_delta):
	$Floor.position.x = $Playerin.position.x - 150


func _on_mob_timer_timeout():
	if GHUD.mob_counter < 2:
		var mob = mob_scene.instantiate()
		mob.position.x = $Playerin.position.x + 1500
		mob.position.y = 640
		add_child(mob)
		mob.hit.connect(game_over)
