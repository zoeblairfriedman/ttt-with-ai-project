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
    

def initialize(board, player_1, player_2)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
end

def current_player
    # if self.board.count("X") > self.board.count("O")
    #     return "O"
    # else
    #     return "X"
    # end
end

def won?
    # WIN_COMBINATIONS.each do |combos|
    #     a = combos[0] 
    #     b = combos[1]
    #     c = combos[2]
    #     if self.board[a] == "X" && self.board[b] == "X" && self.board[c] == "X"
    #         return combos
    #     elsif self.board[a] == "O" && self.board[b] == "O" && self.board[c] == "O"
    #         return combos
    #     end
    # end
    # return false
end

def winner
    # self.board[won?[0]] unless !won?
end

def start
end

def player
end

def turn
end

end