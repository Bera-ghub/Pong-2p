extends Sprite2D

var score := [0, 0]
const PADDLE_SPEED := 500

func _on_ball_timer_timeout() -> void:
	$Ball.new_ball()


func _on_score_left_body_entered(body: Node2D) -> void:
	score[1] += 1
	$Scores/P2score.text = str(score[1])
	$BallTimer.start()

func _on_score_right_body_entered(body: Node2D) -> void:
	score[0] += 1
	$Scores/P1score.text = str(score[0])
	$BallTimer.start()
