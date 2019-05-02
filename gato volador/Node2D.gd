extends KinematicBody2D

var player_velocity = Vector2(0,0)
const K_VELOCITY = 10
export var vida_max = 100
export var vida_actual = 100
var barravida

func _ready():
	barravida = get_tree().get_nodes_in_group("hpj1")
func _physics_process(delta):
	#getMove()
	if Input.is_action_pressed("touch"):
		player_velocity +=  (get_global_mouse_position() - position).normalized() * K_VELOCITY
	move_and_slide(player_velocity)
	actulizar()
	
func actulizar():
#	barravida.progresBar.value = barravida.progressBar.value - 10
#func getMove():
	if Input.is_action_pressed("ui_right"):
		player_velocity.x += K_VELOCITY
	if Input.is_action_pressed("ui_left"):
		player_velocity.x -= K_VELOCITY
	if Input.is_action_pressed("ui_up"):
		player_velocity.y -= K_VELOCITY
	if Input.is_action_pressed("ui_down"):
		player_velocity.y += K_VELOCITY
