extends Node2D

var player_turn

func _ready():
	# The player with the black stones moves first (ala Go)
	player_turn = "black"

func _get_player_turn():
	return player_turn