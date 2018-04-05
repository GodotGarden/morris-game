extends Node2D

# Let listeners know when the player moves
signal player_moved

# Players can only have three pieces
#
# TODO: try and figure out how to use 'actual' pieces rather than a counter
# i.e. each player has a number of pieces at the start of the game
# the pieces are placed on the board until they run out
const MAX_ALLOWED_PIECES = 3

# Set piece counters to zero
var white_pieces_on_board = 0
var black_pieces_on_board = 0

func _on_Position_player_moved(player_color, position):
	# Let listeners know the player moved to a position
	emit_signal("player_moved", player_color, position)