extends CharacterBody2D

var health = 3
var player 

func _ready() -> void:
	player = get_tree().get_first_node_in_group("Player")
	
func _process(delta: float) -> void:
	$ProgressBar.value = float(health)/3 * 100
	if health <= 0:
		queue_free()
	
	var vec_to_player = player.position - position
	var target_direction = vec_to_player.normalized()
	var dist_to_player = vec_to_player.length()
	velocity = target_direction * 130
	move_and_slide()
	if dist_to_player < 200:
		player.take_damage()
	
