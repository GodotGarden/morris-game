extends Node2D

# Let listeners know when the player moves
signal player_moved

# Set piece counters to zero
var white_pieces_on_board = 0
var black_pieces_on_board = 0

func _on_Position_player_moved():
	# Let listeners know the player moved
	emit_signal("player_moved")