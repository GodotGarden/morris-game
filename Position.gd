extends Control

signal player_moved

var Game

# Keep track of which color occupies this piece
var occupied_by = null

# Positions are 64 by 64, so the center is x32 y32
const PIECE_CENTERING_OFFSET = Vector2(32, 32)

func _ready():
	# Get reference to Game node, so we can access game state
	Game = get_node("/root/Game")

func can_drop_data(position, piece):
	# Get current player turn
	var player_turn = Game.player_turn
	
	# Make sure correct player is moving and position is not occupied
	if player_turn == piece.color and occupied_by == null:
		return true

func drop_data(position, piece):
	# Put piece in center of position
	piece.rect_position = self.rect_global_position + PIECE_CENTERING_OFFSET

func _on_Area2D_piece_entered(piece_color):
	# Assuming a piece area entered
	# position is occupied by a color
	occupied_by = piece_color
	emit_signal("player_moved", piece_color, self.name)

func _on_Area2D_area_exited(area):
	# Assuming a piece area left
	# position is no longer occupied by a color
	occupied_by = null
