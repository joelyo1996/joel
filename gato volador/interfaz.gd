extends Control

func _on_jugar_pressed():
	get_tree().change_scene("res://Publicidad/Publicidad.tscn")


func _on_salir_pressed():
	OS.shell_open("https://joelyo1996.itch.io/")
	get_tree().quit()
	

func _on_creditos_pressed():
	get_tree().change_scene("res://creditos.tscn")
	pass # Replace with function body.
