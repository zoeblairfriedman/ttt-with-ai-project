class Game 
    attr_accessor :board, :player_1, :player_2

WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]    
    ]
    

def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
end

def current_player
    if self.board.cells.count("X") > self.board.cells.count("O")
        return player_2
    elsif self.board.cells.count("X") < self.board.cells.count("O")
        return player_1
    else
        return player_1
    end
end

def won?
    WIN_COMBINATIONS.each do |combo|
        a = combo[0] 
        b = combo[1]
        c = combo[2]
        if self.board.cells[a] == "X" && self.board.cells[b] == "X" && self.board.cells[c] == "X"
            return combo
        elsif self.board.cells[a] == "O" && self.board.cells[b] == "O" && self.board.cells[c] == "O"
            return combo
        end
    end
    return false
end

def draw?
    !self.won? && self.board.full?
end

def over?
    self.won? || self.draw?
end

def winner
    self.board.cells[won?[0]] unless !won?
end

def start
end

def play
    # puts "What is your move?" unless over?
    while !over?
        turn
    end
    if draw?
        puts "Cat's Game!"
    elsif won?
        puts "Congratulations #{winner}!"
    end
end

def turn
    i = current_player.move(board).to_i
    if self.board.valid_move?(i)
        self.board.update(i, current_player)
    else
        puts "invalid"
        j = current_player.move(board).to_i
        self.board.update(j, current_player)
    end
    self.board.display
    puts "\n"
end

end