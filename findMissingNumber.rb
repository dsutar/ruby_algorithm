# Input : arr[] = [1, 2, 3, 4, 6, 7, 8]
# Output : 5

# Input : arr[] = [1, 2, 3, 4, 5, 6, 8, 9]
# Output : 7


# Find the Missing Number in a sorted array
# Given a list of n-1 integers and these integers are in the range of 1 to n. There are no duplicates in list. 
# One of the integers is missing in the list. Write an efficient code to find the missing integer.


def find_missing_number arr
    n = arr.length - 1
    start_value = arr[0]
    temp = 0

    for i in 1..n do
        if (arr[i] = start_value + 1)
            start_value = arr[i]
        else
            temp = start_value + 1
        end 
    end
    temp
end

puts find_missing_number [1, 2, 3, 4, 5, 6, 8, 9]

