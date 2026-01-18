extends StaticBody2D

var win_height : int
var p_height : int


func _ready() -> void:
	win_height = get_viewport_rect().size.y
	p_height = 12.6
 # this may cause issues

func _process(delta):
	if Input.is_action_pressed("up-right"):
		position.y -= get_parent().PADDLE_SPEED * delta
	elif Input.is_action_pressed("down-right"):
		position.y += get_parent().PADDLE_SPEED * delta
	position.y = clamp(position.y, p_height, win_height + p_height / 2)
