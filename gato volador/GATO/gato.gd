extends KinematicBody2D
var movimiento = Vector2()
var limite
signal golpe

func _ready():
	$CanvasLayer/ProgressBar.max_value = vida_global.vida_maxima
	$CanvasLayer/ProgressBar.value = vida_global.vida_jugador
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
	$CanvasLayer/ProgressBar.value = vida_global.vida_jugador
	vida_global.vida_jugador -= 25
	if ($CanvasLayer/ProgressBar.value == 0):
		queue_free()
		get_tree().change_scene("res://Interfaz.tscn")
	pass # Replace with function body.
