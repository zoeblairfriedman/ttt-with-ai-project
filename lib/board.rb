class Board
attr_accessor :cells
#has a property "cells" stores data of board state
#in an array

def initialize
    @cells = Array.new(9, " ")
end

def reset!
    self.cells = Array.new(9, " ")
end

def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "------------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "------------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
end

def position(input)
    i = input.to_i - 1
    self.cells[i]
end

def update(input, player)
    self.cells[input.to_i-1] = player.token
end

def full?
    !self.cells.include?(" ")
end

def turn_count
    turns = 0
    self.cells.each do |cell|
        if cell.include?("X") || cell.include?("O")
            turns += 1
        end 
    end
    turns
end

def taken?(input)
    position(input) == "X" || position(input) == "O"
end

def valid_move?(input)
    if input.to_i != 0
    turn_count >= 0 && turn_count <= 9 && !taken?(input)
    end
end

end