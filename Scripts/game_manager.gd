extends Node
var score =0
@onready var label_2: Label = $Label2
@onready var audio_controller: Node2D = $"../audio/AudioController"


func add_point():
	score +=100
	label_2.text = "Coins:" + str(score)         
		   
#func end_level():
	#audio_controller.play_end_level()
	#get_tree().change_scene("res://path_to_next_level.tscn")
