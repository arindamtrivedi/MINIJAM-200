extends Area2D
class_name Pad

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		body.velocity.y = body.JUMP_VELOCITY
