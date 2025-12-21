class_name DialogueBox
extends CanvasLayer


signal dialogue_finished


@export var face: TextureRect
@export var name_panel: Panel
@export var name_label: Label
@export var text_label: RichTextLabel
@export var text_player: AnimationPlayer


func show_dialogue(dialogue: String):
	text_label.text = dialogue
	text_player.play("play")
	await text_player.animation_finished
	dialogue_finished.emit()
