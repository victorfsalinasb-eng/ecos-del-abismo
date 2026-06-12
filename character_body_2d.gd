extends CharacterBody2D

const SPEED = 100.0

@onready var sprite = $Sprite2D

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
		sprite.animation = "walk_right"
		sprite.play()
	elif Input.is_action_pressed("ui_left"):
		direction.x -= 1
		sprite.animation = "walk_left"
		sprite.play()
	elif Input.is_action_pressed("ui_down"):
		direction.y += 1
		sprite.animation = "walk_down"
		sprite.play()
	elif Input.is_action_pressed("ui_up"):
		direction.y -= 1
		sprite.animation = "walk_up"
		sprite.play()
	else:
		sprite.stop()
	
	velocity = direction.normalized() * SPEED
	move_and_slide()