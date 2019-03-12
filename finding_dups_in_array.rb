# Given an array of n integers. The task is to print the duplicates in the given array. 
# #If there are no duplicates then print -1.

# Examples:

# Input : {2, 10, 100, 2, 10, 11}
# Output : 2 10

# hash = {2 -> 2,10 -> 2,100 -> 1, 11}

# Input : {5, 40, 1, 40, 100000, 1, 5, 1}
# Output : 5 40 1
# Note:The duplicate elements can be printed in any order.


def find_dups_in_array arr
    a = {}

    arr.each{|val|
        if a.include?val
            a[val] = a[val] + 1
        else
            a[val] = 1
        end
    }
    
    a.select{|key, val| val == 2}



end

puts find_dups_in_array [2, 10, 100, 2, 10, 11]