require 'pry'
module Players
	class Computer < Player

WIN_COMBINATIONS = [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"], ["1", "4", "7"], ["2", "5", "8"], ["3", "6", "9"], ["1", "5", "9"], ["3", "5", "7"]]
X_SEQUENCE = ["9", "1", "7", "4", "8", "5", "3", "2", "6"]
O_SEQUENCE_CENTER_CLEAR = ["5", "8", "2", "3", "4", "7", "6", "1", "9"]




		def move(board)
			if self.token == "O"
				return o_game(board)
			else
				return x_game(board)
			end
			
		end


		def can_win?(board, token)
			WIN_COMBINATIONS.each do |combo|
				return combo[0] if board.position(combo[0]) == " " && board.position(combo[1]) == token && board.position(combo[2]) == token
				return combo[1] if board.position(combo[1]) == " " && board.position(combo[0]) == token && board.position(combo[2]) == token
				return combo[2] if board.position(combo[2]) == " " && board.position(combo[1]) == token && board.position(combo[0]) == token
			end
			return false
		end



		def x_game(board)
			
			return can_win?(board, "X") if can_win?(board, "X") != false
			return can_win?(board, "O") if can_win?(board, "O") != false
			X_SEQUENCE.each do |move|
				return move if board.valid_move?(move)
			end


		end

		def o_game(board)

			return can_win?(board, "O") if can_win?(board, "O") != false
			return can_win?(board, "X") if can_win?(board, "X") != false
			if board.cells[4] != "X"
				O_SEQUENCE_CENTER_CLEAR.each do |move|
					return move if board.valid_move?(move)
				end
			else X_SEQUENCE.each do |move|
				return move if board.valid_move?(move)
				end
			end


			
		end


		
	end

end