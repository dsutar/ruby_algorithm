# In a given sorted array of integer find the square root of the array in sorted way

def sorted_ints(arr)
    n = arr.length 
    k = 0
    for k in 0..n do
        break if arr[k] >= 0
    end

     i = k-1 #Initial index of first half 
     j = k # Initial index of second half 
     ind = 0 # Initial index of temp array 

    
    temp = Array.new(n)

    while i >= 0 && j < n
        
        if arr[i] * arr[i] < arr[j] * arr[j]
            temp[ind] = arr[i] * arr[i]
            i -= 1
        else
            temp[ind] = arr[j] * arr[j]
            j += 1
        end
    ind += 1
    end

    puts "#{temp} first iteration"
    while(i >= 0) 
            temp[ind += 1] = arr[i] * arr[i]
            i -= 1
    end

    puts "#{temp} 2nd iteration"

    while(j < n) 
            temp[ind += 1] = arr[j] * arr[j]
            j += 1
    end

    puts "#{temp} 3nd iteration"

    for i in 0..n do
        arr[i] = temp[i] 
    end


    puts arr
end



sorted_ints([-4,-2,-1,2,4,6,8]) # 1 1 4 9 36

