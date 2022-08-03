extends Node2D

func _on_TextureButton_pressed():
	OS.shell_open("https://joelyo1996.itch.io/")
	get_tree().quit()
