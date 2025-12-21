extends Node


signal interacted


var dialogue_box_scene: PackedScene = preload("res://scenes/gui/menus/dialogue_box.tscn")


func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		interacted.emit()


func play(dialogue: DialogueData) -> void:
	get_tree().paused = true
	var dialogue_box: DialogueBox = dialogue_box_scene.instantiate()
	add_child(dialogue_box)
	for line in dialogue.lines:
		await show_text(dialogue_box, line)
	dialogue_box.queue_free()
	get_tree().paused = false


func show_text(dialogue_box: CanvasLayer, line: DialogueContent):
	if line.name != "":
		dialogue_box.name_panel.show()
		dialogue_box.name_label.text = line.name
	else:
		dialogue_box.name_panel.hide()
	dialogue_box.face.texture = line.face
	dialogue_box.show_dialogue(line.text)
	await dialogue_box.dialogue_finished
	await interacted
