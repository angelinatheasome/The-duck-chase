extends Node2D

@export var amount = 100
@export var obstacles: Array[PackedScene]

@export var density = 3000

func _ready() -> void:
	for i in amount:
		var new_obstacle = obstacles.pick_random().instantiate()
		var new_position = Vector2(
			randf_range(-density, density),
			randf_range(-density, density)
		)
		new_obstacle.position = new_position
		add_child(new_obstacle)
	
