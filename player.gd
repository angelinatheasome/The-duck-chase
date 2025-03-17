extends CharacterBody2D

var health = 6

var health_cooldown = 0.5

func _process(delta: float) -> void:
	health_cooldown -= delta
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 315
	move_and_slide()

func take_damage():
	if health_cooldown < 0:
		health -= 1
		health_cooldown = 0.5
		if health <= 0:
			get_tree().change_scene_to_file("res://death.tscn")
			
	$CanvasLayer/ProgressBar.value = (float(health)/6.0) * 100
