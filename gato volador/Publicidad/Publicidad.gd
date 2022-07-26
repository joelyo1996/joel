extends Node2D

func _ready():
	$AnimationPlayer.play("Animacion")
	pass # Replace with function body.



func _on_Timer_timeout():
	get_tree().change_scene("res://loading.tscn")
