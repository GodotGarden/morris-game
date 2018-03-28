extends Area2D

var occupied_by

func _ready():
	pass


func _on_Position_input_event(viewport, event, shape_idx):
	# Check if the event was a mouse click
	if (event is InputEventMouseButton && event.pressed):
        print("Clicked")
