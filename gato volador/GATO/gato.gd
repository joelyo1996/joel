extends KinematicBody2D
var movimiento = Vector2()
var limite

func _ready():
	$Timer.start()
	limite =  get_viewport_rect().size
	pass
	


func _physics_process(delta):
	movimiento = Vector2()
	if Input.is_action_pressed("ui_left"):
		movimiento.x-=650
	if Input.is_action_pressed("ui_right"):
		movimiento.x+=650
	movimiento = move_and_slide(movimiento)

	pass
	
	position.x = clamp(position.x,0,limite.x)



func _on_Area2D_area_entered(area):
	queue_free()
	pass # Replace with function body.
