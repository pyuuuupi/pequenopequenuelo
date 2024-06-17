extends Area2D
signal hit

func _ready():
	var collisions = [
		$gatocollision,
		$scarecollision,
		$muffincollision
	]
	var sprites = [
		$gatocollision,
		$scarecollision,
		$muffincollision
		
	]
	
	var random_int = randi() % collisions.size()
	
	var _selected_sprites = sprites [random_int]
	var selected_collision = collisions [random_int]
	
	selected_collision.disabled = false
	selected_collision.visible = true
	


func _on_visible_on_screen_notifier_2d_screen_exited():
	if GHUD.mob_counter > 0:
		GHUD.mob_counter = GHUD.mob_counter -1
	queue_free() 
func _on_body_entered(body):
	if body.is_in_group("Playerin"):
		hit.emit()
		print("me golpiaron")
