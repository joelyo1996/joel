extends Node2D
var bala = preload("res://Bala/bala.tscn")

func _ready():
	var bli = bala.instance()
	add_child( bli)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var bli = bala.instance()
	add_child( bli)
	
	pass # Replace with function body.
