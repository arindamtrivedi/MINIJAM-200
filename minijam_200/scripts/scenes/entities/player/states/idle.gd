extends State


@export var player: Player


func enter() -> void:
	print("Enter state 'Idle'")
	player.state_label.text = "idle"


func exit() -> void:
	print("Exit state 'Idle'")


func physics_update(_delta: float) -> void:
	if player.velocity != Vector2.ZERO:
		if player.is_on_floor():
			transitioned.emit(self, "movement")
		else:
			transitioned.emit(self, "jump")
