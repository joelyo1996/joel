extends Node2D
var bala = preload("res://Perro/perro2.tscn")

func _ready():
	$Timer.start()
	var bli = bala.instance()
	add_child( bli)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var bli = bala.instance()
	add_child( bli)
	
	pass # Replace with function body.
