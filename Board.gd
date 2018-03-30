extends Node2D

signal player_moved

func _get_player_turn():
	return $Game.get_player_turn()

func _on_Position_player_moved():
	emit_signal("player_moved")