extends Control

export var color = 'black'

# Piece textures
var black_piece_texture = load("res://images/black_piece.svg")
var white_piece_texture = load("res://images/white_piece.svg")

func _ready():
	if color == 'black':
		$Sprite.set_texture(black_piece_texture)
	elif color == 'white':
		$Sprite.set_texture(white_piece_texture)

func get_drag_data(position):
	print(position)
	#self.visible = false
	# Use another colorpicker as drag preview
	var cpb = ColorPickerButton.new()
	cpb.rect_size = Vector2(50, 50)
	set_drag_preview(cpb)
	# Return color as drag data
	return self
