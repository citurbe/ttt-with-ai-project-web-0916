require 'pry'
module Players
	class Computer < Player

	# def move(board)
	# 	possible_moves = []
	# 	board.cells.each_with_index do |value, index|
	# 		possible_moves << (index + 1).to_s if value == " "
	# 		#binding.pry
	# 	end
	# 	possible_moves.sample
	# end
		def move(board)
			if self.token == "O"
				return o_game(board)
			else
				return x_game(board)
			end
			
		end

		# def can_block?(board, token)
		# 	enemy_token = "O" if token == "X"
		# 	enemy_token = "X" if token =="O"

		# 	return true if board.valid_move?("2") && board.position(8) == enemy_token && board.position(5) == enemy_token
		# 	return true if board.valid_move?("8") && board.position(2) == enemy_token && board.position(5) == enemy_token
		# 	return true if board.valid_move?("5") && board.position(8) == enemy_token && board.position(2) == enemy_token
		# 	return true if board.valid_move?("3") && board.position(6) == enemy_token && board.position(9) == enemy_token
		# 	return true if board.valid_move?("6") && board.position(3) == enemy_token && board.position(9) == enemy_token
		# 	return true if board.valid_move?("9") && board.position(3) == enemy_token && board.position(6) == enemy_token
		# 	return true if board.valid_move?("3") && board.position(5) == enemy_token && board.position(7) == enemy_token
		# 	return true if board.valid_move?("7") && board.position(3) == enemy_token && board.position(5) == enemy_token
		# 	return true if board.valid_move?("5") && board.position(7) == enemy_token && board.position(3) == enemy_token
		# end

		def block (board, token)

			enemy_token = "O" if token == "X"
			enemy_token = "X" if token =="O"

			return "2" if board.valid_move?("2") && board.position(8) == enemy_token && board.position(5) == enemy_token
			return "8" if board.valid_move?("8") && board.position(2) == enemy_token && board.position(5) == enemy_token
			return "5" if board.valid_move?("5") && board.position(8) == enemy_token && board.position(2) == enemy_token
			return "3" if board.valid_move?("3") && board.position(6) == enemy_token && board.position(9) == enemy_token
			return "6" if board.valid_move?("6") && board.position(3) == enemy_token && board.position(9) == enemy_token
			return "9" if board.valid_move?("9") && board.position(3) == enemy_token && board.position(6) == enemy_token
			return "3" if board.valid_move?("3") && board.position(5) == enemy_token && board.position(7) == enemy_token
			return "7" if board.valid_move?("7") && board.position(3) == enemy_token && board.position(5) == enemy_token
			return "5" if board.valid_move?("5") && board.position(7) == enemy_token && board.position(3) == enemy_token
			return "4" if board.valid_move?("4") && board.position(7) == enemy_token && board.position(1) == enemy_token
			return "7" if board.valid_move?("7") && board.position(4) == enemy_token && board.position(1) == enemy_token
			return "1" if board.valid_move?("1") && board.position(7) == enemy_token && board.position(4) == enemy_token
			return "9" if board.valid_move?("9") && board.position(7) == enemy_token && board.position(8) == enemy_token
			return "7" if board.valid_move?("7") && board.position(8) == enemy_token && board.position(9) == enemy_token
			return "8" if board.valid_move?("8") && board.position(7) == enemy_token && board.position(9) == enemy_token
			return "2" if board.valid_move?("2") && board.position(1) == enemy_token && board.position(1) == enemy_token
			return "1" if board.valid_move?("1") && board.position(2) == enemy_token && board.position(3) == enemy_token
			return "3" if board.valid_move?("3") && board.position(1) == enemy_token && board.position(2) == enemy_token

			return false


		end
		

		def x_game(board)
			
			return block(board, "X") if block(board, "X") != false


			return "9" if board.valid_move?("9")
			return "1" if board.valid_move?("1")
			return "7" if board.valid_move?("7")			
			return "4" if board.valid_move?("4")
			return "8" if board.valid_move?("8")
			return "5" if board.valid_move?("5")
			return "3" if board.valid_move?("3")
			return "2" if board.valid_move?("2")
			return "6" if board.valid_move?("6")
		end

		def o_game(board)

			return block(board, "O") if block(board, "O") != false
			return "5" if board.valid_move?("5")
			return "8" if board.valid_move?("8")
			return "2" if board.valid_move?("2")
			return "3" if board.valid_move?("3")
			return "4" if board.valid_move?("4")
			return "7" if board.valid_move?("7")
			return "6" if board.valid_move?("6")			
			return "1" if board.valid_move?("1")
			return "9" if board.valid_move?("9")
			
		end


		
	end

end