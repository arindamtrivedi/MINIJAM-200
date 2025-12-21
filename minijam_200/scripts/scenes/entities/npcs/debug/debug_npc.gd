extends NPC


func _on_player_detection_body_entered(body: Node2D) -> void:
	if body is Player:
		is_interactable = true


func _on_player_detection_body_exited(body: Node2D) -> void:
	if body is Player:
		is_interactable = false
