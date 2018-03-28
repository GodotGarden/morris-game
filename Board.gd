extends Node2D

var player_turn

func _ready():
	# The player with the black stones moves first (ala Go)
	player_turn = "black"

func _get_player_turn():
	return player_turn

func _on_Position_player_moved():
	# Check current player turn
	# and change to next player
	if player_turn == "black":
		player_turn = "white"
	elif player_turn == "white":
		player_turn = "black"
