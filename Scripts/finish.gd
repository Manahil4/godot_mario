extends Area2D


@export var target_scene: PackedScene;
func _on_body_entered(body: Node2D) -> void:
	if (body.name == 'CharacterBody2D'):
		get_tree().change_scene_to_packed(target_scene)
		 # Replace with function body.
