extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$audioreiniciar.play()
	pass # Replace with function body.
func _on_reiniciar_pressed():
	get_tree().change_scene("res://Interfaz.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_button_down():
	get_tree().change_scene("res://Interfaz.tscn")
	pass # Replace with function body.
