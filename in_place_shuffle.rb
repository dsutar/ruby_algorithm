# Write a method for doing an in-place ↴ shuffle of an array.
# The shuffle must be "uniform," 
# meaning each item in the original array must have the same probability of ending up in each spot in the final array.
# Assume that you have a method get_random(floor, ceiling) for getting a random integer that is >= floor and <= ceiling.

# Algorithm - Knuth shuffle.

def get_random(floor, ceiling)
    rand(floor..ceiling)
end


def shuffle arr

    # Base condition
    if arr.length <= 1
        return arr
    end

    last_index_in_the_array = arr.length - 1

    # choose a random not-yet-placed item to place there
    # (could also be the item currently in that spot)
    # must be an item AFTER the current item, because the stuff
    # before has all already been placed
    (0..arr.length - 2).each do |index_we_are_choosing_for| 
        random_index = get_random(index_we_are_choosing_for, last_index_in_the_array)

        if random_index != index_we_are_choosing_for
            arr[index_we_are_choosing_for], arr[random_index] = arr[random_index], arr[index_we_are_choosing_for]
        end
    
    end

end



sample_array = [1, 2, 3, 4, 5]
puts "Sample array: #{sample_array}"

puts 'Shuffling sample array...'
shuffle(sample_array)
puts sample_array.inspect