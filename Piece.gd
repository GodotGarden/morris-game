extends Control

export var color = 'black'

var piece_texture
var drag_preview

# Piece textures
var black_piece_texture = load("res://images/black_piece.svg")
var white_piece_texture = load("res://images/white_piece.svg")

func _ready():
	var drag_preview_color
	
	if color == 'black':
		piece_texture = black_piece_texture
		drag_preview_color = Color(0,0,0)
	elif color == 'white':
		piece_texture = white_piece_texture
		drag_preview_color = Color(1,1,1)
	
	$Sprite.set_texture(piece_texture)
	
	# Using a color picker button for drag preview
	# TODO: use a Piece Sprite instead
	drag_preview = ColorPickerButton.new()
	drag_preview.color = Color(drag_preview_color)
	drag_preview.rect_size = Vector2(50, 50)

func get_drag_data(position):
	print(position)
	#self.visible = false
	# Use another colorpicker as drag preview
	
	set_drag_preview(drag_preview)
	# Return color as drag data
	return self
