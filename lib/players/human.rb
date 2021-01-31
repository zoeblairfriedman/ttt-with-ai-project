module Players
    class Human < Player  
        def move(board)
            puts "What is your move?"
            input = gets.chomp
        end
    end 
end

# Computer.new("X")
# Players::Human