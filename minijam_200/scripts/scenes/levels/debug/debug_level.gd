extends Level


func _ready() -> void:
	var dialogue: DialogueData = preload("uid://c8j0l3816jaoi")
	DialogueManager.play(dialogue);
