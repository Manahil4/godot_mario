extends Node2D
@export var mute:bool=false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if not mute:
		play_music()
	 # Replace with function body.
func play_music():
	if not mute:
		$Music.play()

func play_jump()->void:
	if not mute:
		$jump.play()
			
func play_end_level() -> void:	
		if not mute:
			
			$Music.stop()
			$End_level.play()	
func play_coin() -> void:
	if not mute:
		$coin.play()  
# Play sound when the level ends


# Play sound when colliding with an enemy
func play_enemy_collision() -> void:
	if not mute:
		$enemy_collision.play()


# Play sound when the player falls

func play_fall() -> void:
	if not mute:
		$fall.play()
