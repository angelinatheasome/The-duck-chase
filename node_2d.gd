extends Node2D

var speed = 1

func _process(delta: float) -> void:
	rotation += delta * speed


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("enemy"):
		body.queue_free()
		speed  *= 1.5
	
