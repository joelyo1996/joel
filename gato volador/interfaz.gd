extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_jugar_pressed():
	get_tree().change_scene("res://loading.tscn")


func _on_salir_pressed():
	OS.shell_open("https://joelyo1996.itch.io/")
	get_tree().quit()
	

func _on_creditos_pressed():
	get_tree().change_scene("res://creditos.tscn")
	pass # Replace with function body.
