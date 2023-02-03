extends KinematicBody2D
onready var ball = get_parent().find_node('Ball')

var speed = 600
var direction = Vector2.ZERO

func _physics_process(delta):
	if ball.direction.x > 0 and ball.position.x > 960: #esta es la linea que agregué
		var direction = Vector2(0, _get_direction())
		move_and_slide(direction * speed)
	
func _get_direction():
	if abs(ball.position.y - position.y) > 20:
		if ball.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
