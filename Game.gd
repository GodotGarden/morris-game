extends Node

var player_turn

func _ready():
	# The player with the black stones moves first (ala Go)
	player_turn = "black"
	
func _get_player_turn():
	return player_turn
	
func change_player_turn():
	# Check current player turn
	# and change to next player
	if player_turn == "black":
		player_turn = "white"
	elif player_turn == "white":
		player_turn = "black"

func _on_Board_player_moved(player_color):
	print("game: player moved")
	# When a player moves, it is the other player's turn
	change_player_turn()
