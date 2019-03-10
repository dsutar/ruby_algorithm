# input: L = 8, R = 11
# Output: 101
# 8 * 12 + 9 * 12 + 10 * 22 + 11 * 22 = 8 + 9 + 40 + 44 = 101

# Input: L = 98, R = 102
# Output: 2
# 98 * 22 + 99 * 22 + 100 * 32 + 101 * 32 + 102 * 32 = 3515
#https://www.geeksforgeeks.org/sum-of-i-countdigitsi2-for-all-i-in-range-l-r/


def find_digits_lower_upper(lower_bound, upper_bound)
 total = 0
    for i in lower_bound..upper_bound do
        length = countdigitsi2 i
        total =+ total + (i * length ** 2)
    end
    total
end

def countdigitsi2 i
    i.to_s.length
end

def run_tests
    desc = 'find the 2 numbers'
    actual = find_digits_lower_upper(8, 11)
    expected = 101
    assert_equal(actual, expected, desc)

    desc = 'find the 2 numbers'
    actual = find_digits_lower_upper(98, 102)
    expected = 3515
    assert_equal(actual, expected, desc)
end
  
def assert_equal(a, b, desc)
    if a == b
        puts "#{desc} ... PASS"
    else
        puts "#{desc} ... FAIL: #{a} != #{b}"
    end
end

  run_tests



    