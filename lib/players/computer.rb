module Players
    class Computer < Player
        def move(board)
            puts "My turn!"
            options = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
            valid_options = []
            options.each do |i|
                if board.valid_move?(i)
                    valid_options << i
                end
            end
            dumb_choice = valid_options.sample
            dumb_choice
        end
    end
end
