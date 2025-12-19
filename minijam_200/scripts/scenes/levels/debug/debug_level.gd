extends Level


func _ready() -> void:
	var dialogue: DialogueData = preload("uid://5tj3rm660eyv")
	DialogueManager.play(dialogue);
