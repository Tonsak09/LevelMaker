extends Sprite2D

@export var textOBJ : Node2D

# Called when the node enters the scene tree for the first time.
#func _ready():
	#material.set_shader_parameter("TextureSize", get_viewport().size)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#textOBJ.global_position = get_global_mouse_position()
	#var xPos = (get_global_mouse_position().x / get_viewport().size.x) + 0.5
	#var yPos = (get_global_mouse_position().y / get_viewport().size.y) + 0.5
	
	var value = get_global_mouse_position() + get_viewport().size / 2.0
	material.set_shader_parameter("MousePos", value)
	print_debug(value)
	#var screenCoords = player.get_viewport_transform() * player.global_position
	#var normalizedScreenCoords = screenCoords / get_viewport().get_visible_rect().size	
