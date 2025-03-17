extends StaticBody2D

@export var obstacles: Array[PackedScene]

var density = 3000

func _ready() -> void:
	for i in 100:
		var new_obstacle = obstacles.pick_random().instantiate()
		var new_position = Vector2(
			randf_range(-density, density),
			randf_range(-density, density)
		)
		new_obstacle.position = new_position
		add_child(new_obstacle)
	
