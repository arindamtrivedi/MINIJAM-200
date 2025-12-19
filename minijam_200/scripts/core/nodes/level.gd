class_name Level
extends Node2D


@export_group("Level Settings")
@export var bgm: AudioStream


func _ready() -> void:
	# MUSIC
	BgmPlayer.stop()
	BgmPlayer.stream = bgm
	BgmPlayer.play()
