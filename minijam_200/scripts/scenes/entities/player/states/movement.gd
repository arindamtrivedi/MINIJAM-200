extends State


@export var player: Player


func enter() -> void:
	print("Enter state 'Movement'")
	player.state_label.text = "movement"


func exit() -> void:
	print("Exit state 'Movement'")


func physics_update(_delta: float) -> void:
	if !player.is_on_floor():
		transitioned.emit(self, "jump")
	if player.velocity == Vector2.ZERO:
		transitioned.emit(self, "idle")
