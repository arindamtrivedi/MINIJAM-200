extends State


@export var player: Player


func enter() -> void:
	print("Enter state 'Jump'")
	player.state_label.text = "jump"


func exit() -> void:
	print("Exit state 'Jump'")


func physics_update(_delta: float) -> void:
	# ANIMATIONS
	if player.velocity.x < 0:
		player.sprite.play("move_left")
	elif player.velocity.x > 0:
		player.sprite.play("move_right")
	
	if player.is_on_floor():
		if player.velocity != Vector2.ZERO:
			transitioned.emit(self, "movement")
		else:
			transitioned.emit(self, "idle")
