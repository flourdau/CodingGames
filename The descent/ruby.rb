STDOUT.sync = true # DO NOT REMOVE

# game loop
loop do
    index, max = 0, 0
    
    8.times do |i|  # (0..7).each{|index|... }
        mountain_h = gets.to_i # represents the height of one mountain.
        
        if mountain_h > max
            max = mountain_h
            index = i
        end       
    end

    puts index # The index of the mountain to fire on.

end