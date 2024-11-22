extends CharacterBody2D
const SPEED = 130.0
const JUMP_VELOCITY = -300.0
const GRAVITY = 500.0  # Adjust as needed for desired falling speed
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var audio_controller: Node2D = $"../audio/AudioController"

func _physics_process(delta: float) -> void:
	# Add gravity to the velocity when not on the floor
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Handle jump
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		audio_controller.play_jump() 

	if velocity.y > 1000 and is_on_floor():  # Play fall sound when landing hard
		audio_controller.play_fall()
	# Get the input direction and handle movement
	var direction := Input.get_axis("move_l", "move_r")
	if direction>0:
		animated_sprite.flip_h=false
	elif direction<0:
		animated_sprite.flip_h=true	
	#play animations
	if is_on_floor():
		audio_controller.play_music()
		if direction == 0:
			animated_sprite.play('idle')
		else:
			animated_sprite.play('run')	
	else:
		animated_sprite.play('jump')	
	
	if direction != 0:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	# Move and slide with updated velocity
	move_and_slide()
