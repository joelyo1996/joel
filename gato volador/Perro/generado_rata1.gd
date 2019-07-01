extends Node2D

export (PackedScene) var rata1

func _ready():
	$Timer.start()
	var bli = rata1.instance()
	add_child( bli)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var bli = rata1.instance()
	add_child( bli)
