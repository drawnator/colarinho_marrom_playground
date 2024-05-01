extends Node2D

var follow_mouse = false
var holding = false
var hold_position = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if holding:
		position = get_viewport().get_mouse_position()+hold_position
	pass



func _on_character_body_2d_mouse_entered():
	follow_mouse = true
	pass # Replace with function body.


func _on_character_body_2d_mouse_exited():
	follow_mouse = false
	pass # Replace with function body.


func _on_mouse_click(pos):
	if follow_mouse:
		holding = true
	if follow_mouse:
		hold_position = position-pos
	pass # Replace with function body.



func _on_mouse_unclick():
	holding = false
	pass # Replace with function body.
