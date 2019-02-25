#[1,2,4,4]
#[3,5,6,9]
#[3,3,3,3] - SUm 8


def find_sum_of_2(arr, sum)
memo = Hash.new

for i in 0..arr.length - 1
    comp = sum - arr[i]
    if memo.include? arr[i]
        puts  "#{comp} - #{arr[i]}" 
        return true
    else
        memo[comp] = arr[i]
    end
end
return false
end


 
puts find_sum_of_2([3,3,3,3], 6)