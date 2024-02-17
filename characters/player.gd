extends CharacterBody2D

@export var CharacterSpeed:float = 10
#parameters/Walk1/blend_position



func _physics_process(delta):
	var InputDirection = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)

	velocity = InputDirection * CharacterSpeed
	
	move_and_slide()
	
