extends Node2D

var scene = load("res://Perro/Rata1.tscn")

func _ready():
	
	$Timer.start()
	var bli = scene.instance()
	add_child( bli)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var bli = scene.instance()
	add_child( bli)
