class_name NPC
extends CharacterBody2D


@export_group("NPC Settings")
@export var npc_name: String
@export var dialogue: DialogueData
@export_group("Nodes")
@export var name_label: Label

var is_interactable: bool = false


func _ready() -> void:
	if name_label:
		name_label.text = npc_name


func _process(delta: float) -> void:
	if is_interactable and Input.is_action_just_pressed("interact"):
		DialogueManager.play(dialogue)
