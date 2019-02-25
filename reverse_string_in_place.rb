def reverse!(str)

  # Reverse the input string in place
  if (str == '' || str.length == 1)
    return str
  end
  
  left_index = 0
  right_index = str.length - 1
  
  
  while left_index < right_index
    str[left_index],str[right_index] =  str[right_index], str[left_index] 
 
      left_index += 1
     right_index -= 1
 
 end

end

def run_tests
  desc = 'empty string'
  string = ''
  reverse!(string)
  expected = ''
  assert_equal(string, expected, desc)

  desc = 'single character string'
  string = 'A'
  reverse!(string)
  expected = 'A'
  assert_equal(string, expected, desc)

  desc = 'longer string'
  string = 'ABCDE'
  reverse!(string)
  expected = 'EDCBA'
  assert_equal(string, expected, desc)
end

def assert_equal(a, b, desc)
  if a == b
    puts "#{desc} ... PASS"
  else
    puts "#{desc} ... FAIL: #{a} != #{b}"
  end
end

run_tests