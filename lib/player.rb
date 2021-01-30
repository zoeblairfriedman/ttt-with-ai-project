module Players
    class Player
        attr_reader :token
        def initialize(token)
            @token = token
        end

        def move 
            #represents how that type of player
            #makes a move in Tic-tac-toe
        end
    end

 class Human < Player  
    def move(board)
        #allows human to enter move through CLI
        #return the value the user enters
    end
 end 

  class Computer < Player
    def move(board)
        #returns the move the computer wants to make
        #in the form of 1-9 string
        #how it does that is up to me
        #but move but be valid
    end
  end


end

