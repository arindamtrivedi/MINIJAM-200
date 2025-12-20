class_name Player
extends CharacterBody2D


@export var state_label: Label
@export var sprite: AnimatedSprite2D

const SPEED: float = 200.0
const GRAVITY: float = 20.0
const JUMP_VELOCITY: float = -400.0

var can_jump: bool = false

func _physics_process(delta: float) -> void:
	if !is_on_floor():
		velocity.y += GRAVITY
	else:
		velocity.y = 0.0
	
	# MOVEMENT
	if is_on_floor() and can_jump:
		if Input.is_action_just_pressed("move_jump"):
			velocity.y = JUMP_VELOCITY
	
	var input_direction: float = Input.get_axis("move_left", "move_right")
	
	if input_direction:
		velocity.x = SPEED * input_direction
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()
