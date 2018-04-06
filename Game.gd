extends Node

var player_turn = "black"
	
func _get_player_turn():
	return player_turn

func check_win_across_top(player_color):
	# Check three spaces for player color
	#   top left
	#   top middle
	#   top right
	var top_left = $Board.find_node('top_left').occupied_by
	var top_middle = $Board.find_node('top_middle').occupied_by
	var top_right = $Board.find_node('top_right').occupied_by
	
	if (top_left == player_color and top_middle == player_color and top_right == player_color):
		return true
	else:
		return false

func check_win_across_center(player_color):
	# Check three spaces for player color
	#   center left
	#   center middle
	#   center right
	var center_left = $Board.find_node('center_left').occupied_by
	var center_middle = $Board.find_node('center_middle').occupied_by
	var center_right = $Board.find_node('center_right').occupied_by
	
	if (center_left == player_color and center_middle == player_color and center_right == player_color):
		return true
	else:
		return false

func check_win_across_bottom(player_color):
	# Check three spaces for player color
	#   bottom left
	#   bottom middle
	#   bottom right
	var bottom_left = $Board.find_node('bottom_left').occupied_by
	var bottom_middle = $Board.find_node('bottom_middle').occupied_by
	var bottom_right = $Board.find_node('bottom_right').occupied_by
	
	if (bottom_left == player_color and bottom_middle == player_color and bottom_right == player_color):
		return true
	else:
		return false

func check_win_vertical_left(player_color):
	# Check three spaces for player color
	#   top left
	#   center left
	#   bottom left
	var top_left = $Board.find_node('top_left').occupied_by
	var center_left = $Board.find_node('center_left').occupied_by
	var bottom_left = $Board.find_node('bottom_left').occupied_by
	
	if (top_left == player_color and center_left == player_color and bottom_left == player_color):
		return true
	else:
		return false

func check_win_vertical_middle(player_color):
	# Check three spaces for player color
	#   top middle
	#   center middle
	#   bottom middle
	var top_middle = $Board.find_node('top_middle').occupied_by
	var center_middle = $Board.find_node('center_middle').occupied_by
	var bottom_middle = $Board.find_node('bottom_middle').occupied_by
	
	if (top_middle == player_color and center_middle == player_color and bottom_middle == player_color):
		return true
	else:
		return false

func check_win_vertical_right(player_color):
	# Check three spaces for player color
	#   top right
	#   center right
	#   bottom right
	var top_right = $Board.find_node('top_right').occupied_by
	var center_right = $Board.find_node('center_right').occupied_by
	var bottom_right = $Board.find_node('bottom_right').occupied_by
	
	if (top_right == player_color and center_right == player_color and bottom_right == player_color):
		return true
	else:
		return false

func check_win_diagonal_up(player_color):
	# Check three spaces for player color
	#   bottom left
	#   center middle
	#   top right
	var bottom_left = $Board.find_node('bottom_left').occupied_by
	var center_middle = $Board.find_node('center_middle').occupied_by
	var top_right = $Board.find_node('top_right').occupied_by
	
	if (bottom_left == player_color and center_middle == player_color and top_right == player_color):
		return true
	else:
		return false

func check_win_diagonal_down(player_color):
	# Check three spaces for player color
	#   top left
	#   center middle
	#   bottom right
	var top_left = $Board.find_node('top_left').occupied_by
	var center_middle = $Board.find_node('center_middle').occupied_by
	var bottom_right = $Board.find_node('bottom_right').occupied_by
	
	if (top_left == player_color and center_middle == player_color and bottom_right == player_color):
		return true
	else:
		return false

func check_winning_move_top_left(player_color):
	# Possible winning combinations are
	#   across top
	#   vertical left
	#   diagonal down
	var player_win = false
	
	var across_top_win = check_win_across_top(player_color)
	var vertical_left_win = check_win_vertical_left(player_color)
	var diagonal_down_win = check_win_diagonal_down(player_color)
	
	if (across_top_win or vertical_left_win or diagonal_down_win):
		player_win = true
	
	return player_win

func check_winning_move_top_middle(player_color):
	# Possible winning combinations are
	#   across top
	#   vertical middle
	var player_win = false
	
	var across_top_win = check_win_across_top(player_color)
	var vertical_middle_win = check_win_vertical_middle(player_color)
	
	if (across_top_win or vertical_middle_win):
		player_win = true
	
	return player_win

func check_winning_move_top_right(player_color):
	# Possible winning combinations are
	#   across top
	#   vertical right
	#   diagonal up
	var player_win = false
	
	var across_top_win = check_win_across_top(player_color)
	var vertical_right_win = check_win_vertical_right(player_color)
	var diagonal_up_win = check_win_diagonal_up(player_color)
	
	if (across_top_win or vertical_right_win or diagonal_up_win):
		player_win = true
	
	return player_win

func check_winning_move_center_left(player_color):
	# Possible winning combinations are
	#   across center
	#   vertical left
	var player_win = false
	
	var across_center_win = check_win_across_center(player_color)
	var vertical_left_win = check_win_vertical_left(player_color)
	
	if (across_center_win or vertical_left_win):
		player_win = true
	
	return player_win

func check_winning_move_center_middle(player_color):
	# Possible winning combinations are
	#   across center
	#   vertical middle
	#   diagonal up
	#   diagonal down
	var player_win = false
	
	var across_center_win = check_win_across_center(player_color)
	var vertical_middle_win = check_win_vertical_middle(player_color)
	var diagonal_up_win = check_win_diagonal_up(player_color)
	var diagonal_down_win = check_win_diagonal_down(player_color)
	
	if (across_center_win or vertical_middle_win or diagonal_up_win or diagonal_down_win):
		player_win = true
	
	return player_win

func check_winning_move_center_right(player_color):
	# Possible winning combinations are
	#   across center
	#   vertical right
	var player_win = false
	
	var across_center_win = check_win_across_center(player_color)
	var vertical_right_win = check_win_vertical_right(player_color)
	
	if (across_center_win or vertical_right_win):
		player_win = true
	
	return player_win

func check_winning_move_bottom_left(player_color):
	# Possible winning combinations are
	#   across bottom
	#   vertical left
	#   diagonal up
	var player_win = false
	
	var across_bottom_win = check_win_across_bottom(player_color)
	var vertical_left_win = check_win_vertical_left(player_color)
	var diagonal_up_win = check_win_diagonal_up(player_color)
	
	if (across_bottom_win or vertical_left_win or diagonal_up_win):
		player_win = true
	
	return player_win

func check_winning_move_bottom_middle(player_color):
	# Possible winning combinations are
	#   across bottom
	#   vertical middle
	var player_win = false
	
	var across_bottom_win = check_win_across_bottom(player_color)
	var vertical_middle_win = check_win_vertical_middle(player_color)
	
	if (across_bottom_win or vertical_middle_win):
		player_win = true
	
	return player_win

func check_winning_move_bottom_right(player_color):
	# Possible winning combinations are
	#   across bottom
	#   vertical right
	#   diagonal down
	var player_win = false
	
	var across_bottom_win = check_win_across_bottom(player_color)
	var vertical_right_win = check_win_vertical_right(player_color)
	var diagonal_down_win = check_win_diagonal_down(player_color)
	
	if (across_bottom_win or vertical_right_win or diagonal_down_win):
		player_win = true
	
	return player_win

func check_winning_move(player_color, position):
	# There are several possible win conditions
	# Narrow the search down based on position
	if position == 'top_left':
		var player_win = check_winning_move_top_left(player_color)
		
		if player_win:
			print('Player ', player_color, ' wins!')
		
		pass
	elif position == 'top_middle':
		var player_win = check_winning_move_top_middle(player_color)
		
		if player_win:
			print('Player ', player_color, ' wins!')
		
		pass
	elif position == 'top_right':
		var player_win = check_winning_move_top_right(player_color)
		
		if player_win:
			print('Player ', player_color, ' wins!')
		
		pass
	elif position == 'center_left':
		var player_win = check_winning_move_center_left(player_color)
		
		if player_win:
			print('Player ', player_color, ' wins!')
		
		pass
	elif position == 'center_middle':
		var player_win = check_winning_move_center_middle(player_color)
		
		if player_win:
			print('Player ', player_color, ' wins!')
		
		pass
	elif position == 'center_right':
		var player_win = check_winning_move_center_right(player_color)
		
		if player_win:
			print('Player ', player_color, ' wins!')
		
		pass
	elif position == 'bottom_left':
		var player_win = check_winning_move_bottom_left(player_color)
		
		if player_win:
			print('Player ', player_color, ' wins!')
		
		pass
	elif position == 'bottom_middle':
		var player_win = check_winning_move_bottom_middle(player_color)
		
		if player_win:
			print('Player ', player_color, ' wins!')
		
		pass
	elif position == 'bottom_right':
		var player_win = check_winning_move_bottom_right(player_color)
		
		if player_win:
			print('Player ', player_color, ' wins!')
		
		pass

func change_player_turn():
	# Check current player turn
	# and change to next player
	if player_turn == "black":
		player_turn = "white"
	elif player_turn == "white":
		player_turn = "black"

func _on_Board_player_moved(player_color, position):
	check_winning_move(player_color, position)
	# When a player moves, it is the other player's turn
	change_player_turn()
