extends Node2D

signal click(pos)

signal unclick()

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = get_viewport().get_mouse_position()
	pass
	
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1:
			if event.pressed:
				click.emit(position)
			else:
				unclick.emit()
	pass

