extends KinematicBody2D

var speed = 0
var direction = Vector2.ZERO
var is_moving = false

func _ready():
	reset_ball()

func reset_ball():
	randomize()
	speed = 600
	direction.x = [-1 ,1][randi()%2]
	direction.y = [-0.8 ,0.8][randi()%2]
	is_moving = true

func _physics_process(delta):
	if is_moving:
		var collide = move_and_collide(direction * speed * delta)
		
		if collide:
			direction = direction.bounce(collide.normal)
			$AudioColision.play()
