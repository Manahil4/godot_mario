extends Area2D
@onready var game_manager: Node = %game_manager
@onready var audio_controller: Node2D = $"../../audio/AudioController"


func _on_body_entered(body: Node2D) -> void:
	audio_controller.play_coin()
	game_manager.add_point()
	queue_free()
