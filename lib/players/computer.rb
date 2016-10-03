require 'pry'
module Players
	class Computer < Player

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
X_SEQUENCE = ["9", "1", "7", "4", "8", "5", "3", "2", "6"]
O_SEQUENCE = ["5", "8", "2", "3", "4", "7", "6", "1", "9"]



		def move(board)
			if self.token == "O"
				return o_game(board)
			else
				return x_game(board)
			end
			
		end


		def can_win?(board, token)
			WIN_COMBINATIONS.each do |combo|
				return combo[0] if combo[0] == " " && combo[1] == token && combo[2] == token
				return combo[1] if combo[1] == " " && combo[0] == token && combo[2] == token
				return combo[2] if combo[2] == " " && combo[1] == token && combo[0] == token
			end
			return false
		end



		def x_game(board)
			
			return can_win?(board, "X") if can_win?(board, "X") != false
			return can_win?(board, "O") if can_win?(board, "O") != false
			X_SEQUENCE.each do |move|
				return move if board.valid_move?(move)
			end


			# return "9" if board.valid_move?("9")
			# return "1" if board.valid_move?("1")
			# return "7" if board.valid_move?("7")			
			# return "4" if board.valid_move?("4")
			# return "8" if board.valid_move?("8")
			# return "5" if board.valid_move?("5")
			# return "3" if board.valid_move?("3")
			# return "2" if board.valid_move?("2")
			# return "6" if board.valid_move?("6")
		end

		def o_game(board)

			return can_win?(board, "O") if can_win?(board, "O") != false
			return can_win?(board, "X") if can_win?(board, "X") != false
			O_SEQUENCE.each do |move|
				return move if board.valid_move?(move)
			end



			# return "5" if board.valid_move?("5")
			# return "8" if board.valid_move?("8")
			# return "2" if board.valid_move?("2")
			# return "3" if board.valid_move?("3")
			# return "4" if board.valid_move?("4")
			# return "7" if board.valid_move?("7")
			# return "6" if board.valid_move?("6")			
			# return "1" if board.valid_move?("1")
			# return "9" if board.valid_move?("9")
			
		end


		
	end

end