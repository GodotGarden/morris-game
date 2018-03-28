extends Area2D

var occupied_by
var board
var black_piece_texture = load("res://images/black_piece.svg")
var white_piece_texture = load("res://images/white_piece.svg")

func _ready():
	board = self.get_parent()
	pass


func _on_Position_input_event(viewport, event, shape_idx):
	# Check if the event was a mouse click
	if (event is InputEventMouseButton && event.pressed):
		# Check what player's turn it is
		if board.player_turn == "black":
			# Put a black piece on the position
			$Piece.set_texture(black_piece_texture)
		elif board.player_turn == "white":
			# Put a white piece on the position
			$Piece.set_texture(white_piece_texture)