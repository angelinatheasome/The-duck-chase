extends Node2D

var speed = 2

func _process(delta: float) -> void:
	rotation += delta * speed


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("enemy"):
		body.health -= 1
		speed  *= 1
	
