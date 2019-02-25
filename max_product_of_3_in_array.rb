

def max_product_of_3_in_array(arr)
    highest = arr[0..2].max
    lowest = arr[0..2].min
    highest_product_of_2 = arr[0] * arr[1]
    lowest_product_of_2 = arr[0] * arr[1]
    highest_product_of_3 = arr[0] * arr[1] * arr[2]


    for i in 2..arr.length - 1 do
        current = arr[i]
        
        highest = [current, highest].max
        lowest = [current, lowest].min

        highest_product_of_2 = [highest_product_of_2, current * highest, current * lowest].max
        lowest_product_of_2 = [lowest_product_of_2, current * highest, current * lowest].min

        highest_product_of_3 = [highest_product_of_3, current * highest_product_of_2, current * lowest_product_of_2].max


    
    end

highest_product_of_3

end



puts max_product_of_3_in_array ([-10,-10,1,-6,-10])