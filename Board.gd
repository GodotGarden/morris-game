extends Node2D

var player_turn

func _ready():
	# The player with the black stones moves first (ala Go)
	player_turn = 'black'

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
