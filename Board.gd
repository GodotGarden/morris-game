extends Node2D

# Let listeners know when the player moves
signal player_moved

func _on_Position_player_moved(player_color, position):
	# Let listeners know the player moved to a position
	emit_signal("player_moved", player_color, position)