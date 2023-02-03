extends Node2D

func _restart_game():
	randomize()
	var altura = 64 + randi()%(1080-64)
	$Oponente.position = Vector2(1870, $Oponente.position.y)
	$Player.position= Vector2(50,$Player.position.y)
	$Ball.is_moving = false
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(960,altura)
	$Ball.reset_ball()

func _on_Arco_Player_body_entered(body):
	_restart_game()

func _on_Arco_Enemie_body_entered(body):
	_restart_game()
