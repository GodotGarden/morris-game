extends Area2D

signal piece_entered

func _on_Area2D_area_entered(area):
	var dropped_piece = get_overlapping_areas()[0]
	var piece_color = dropped_piece.get_parent().color
	
	emit_signal("piece_entered", piece_color)
