extends Node


@export var viewport_path : NodePath
@onready var target_viewport = get_node(viewport_path) if viewport_path else get_tree().root.get_viewport()


func _input(event):
	if event.is_action_pressed("ui_accept"):
		#get_viewport().get_texture().get_image().save_png("res://Screenshot.png") # Saves internally 
		
		# Saves to download from browser 
		var buffer := get_viewport().get_texture().get_image().save_png_to_buffer()
		JavaScriptBridge.download_buffer(buffer, "%s.png" % "my_filename", "image/png")
