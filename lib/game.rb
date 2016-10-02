require 'pry'
class Game

attr_accessor :board, :player_1, :player_2

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]


def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
	@board = board
	@player_1 = player_1
	@player_2 = player_2
	
end

def current_player
	return self.player_2 if self.board.turn_count % 2 != 0
	return self.player_1
end

def won?
	end_value = false
  WIN_COMBINATIONS.each do |combo|
    if combo.all?{|position| self.board.cells[position] == "X"} || combo.all?{|position| self.board.cells[position] == "O"}
    end_value = combo

  end
end
return end_value
end

def over?
	return self.draw? || self.won? 
end

def draw?
	return self.board.full? && !self.won?
end

def winner
	return nil if self.won? == false
	self.board.cells[self.won?[0]]
end

def turn
	self.board.display

	choice = current_player.move(self.board)
	
	while !self.board.valid_move?(choice)
		puts "Sorry, invalid!"
		choice = current_player.move(self.board)
	end
		self.board.update(choice, current_player)
	
end

def play
	until self.over?
		turn
		#binding.pry
		break if self.won? || self.draw?
	end
		if self.won?
			puts "Congratulations #{self.winner}!"
		else 
			puts "Cats Game!"
		end
		self.board.display
	end
end