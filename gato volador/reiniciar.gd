extends Node2D

func _ready():
	$audioreiniciar.play()
	pass # Replace with function body.

func _on_Button_pressed():
	get_tree().change_scene("res://Interfaz.tscn")
	pass # Replace with function body.
