extends Control

func _on_jugar_pressed():
	get_tree().change_scene("res://Publicidad/Publicidad.tscn")


func _on_salir_pressed():
	get_tree().change_scene("res://Publicidad/Ayuda.tscn")

	

func _on_creditos_pressed():
	get_tree().change_scene("res://creditos.tscn")
	pass # Replace with function body.
