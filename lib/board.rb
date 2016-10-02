require 'pry'
class Board

attr_accessor :cells



def initialize
	self.cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

end

def reset!
	self.cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
end

def display
	puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
	puts "-----------"
	puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
	puts "-----------"
	puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
end

def position (location)
	self.cells[location.to_i - 1]
end

def full?
	!self.cells.include?(" ")
end

def turn_count
	count = 0
	self.cells.each {|position| count += 1 if position != " "}
	count
end

def taken?(position)
	self.cells[position.to_i - 1] != " "
end

def empty?(position)
	!self.taken?(position)
end

def valid_move?(position)
	return false if position.to_i > 9 || position.to_i < 1
	!self.taken?(position)
end

def update(position, player)
	self.cells[position.to_i - 1] = player.token

end

end