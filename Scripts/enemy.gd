extends Node2D
const speed = 60
var direction =1
@onready var ray_cast_r: RayCast2D = $RayCastR
@onready var ray_cast_l: RayCast2D = $RayCastL
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var audio_controller: Node2D = $"../../audio/AudioController"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_r.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_l.is_colliding():
		direction = 1
		animated_sprite.flip_h = false	
	position.x += direction*speed*delta
#
#func _on_body_entered(body: Node2D) -> void:
	#if audio_controller:
			## Reload level or handle game over
		#get_tree().reload_current_scene()
#
