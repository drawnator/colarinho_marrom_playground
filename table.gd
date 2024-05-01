extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func spawn_sticker():
	#instance_from_id(sticker_scene)
	print("there would be a new sticker if I new how to do it")
	pass
	
func verify():
	print($sticker_area.get_overlapping_bodies())
	pass

func _on_button_button_pressed():
	verify()
	pass # Replace with function body.


func _on_start_button_pressed():
	spawn_sticker()
	$photo.frame  = ($photo.frame + 1) % 7 
	pass # Replace with function body.


func _on_timer_timeout():
	#if stickers.count() < 20:
	spawn_sticker()
	pass # Replace with function body.

func _on_mouse_click(pos):
	pass
