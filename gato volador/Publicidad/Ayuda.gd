extends Node2D

func _on_Button_pressed():
	get_tree().change_scene("res://Interfaz.tscn")


func _on_Salir_pressed():
	OS.shell_open("https://joelyo1996.itch.io/")
	get_tree().quit()
