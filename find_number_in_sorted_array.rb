

#Suppose we had an array ↴ of nn integers sorted in ascending order. 
#How quickly could we check if a given integer is in the array?

def contains?(nums, target)

  # see if target appears in nums

  # we think of floor_index and ceiling_index as "walls" around
  # the possible positions of our target, so by -1 below we mean
  # to start our wall "to the left" of the 0th index
  # (we *don't* mean "the last index")
  floor_index = -1
  ceiling_index = nums.length

  # if there isn't at least 1 index between floor and ceiling,
  # we've run out of guesses and the number must not be present
  while floor_index + 1 < ceiling_index

    # find the index ~halfway between the floor and ceiling
    # we use integer division, so we'll never get a "half index"
    distance = ceiling_index - floor_index
    half_distance = distance / 2
    guess_index = floor_index + half_distance

    guess_value = nums[guess_index]

    return true if guess_value == target

    if guess_value > target

      # target is to the left, so move ceiling to the left
      ceiling_index = guess_index

    else

      # target is to the right, so move floor to the right
      floor_index = guess_index
    end
  end

  false
end

# Tests

def run_tests
  desc = 'empty array'
  result = contains?([], 1)
  assert_false(result, desc)

  desc = 'one item array number present'
  result = contains?([1], 1)
  assert_true(result, desc)

  desc = 'one item array number absent'
  result = contains?([1], 2)
  assert_false(result, desc)

  desc = 'small array number present'
  result = contains?([2, 4, 6], 4)
  assert_true(result, desc)

  desc = 'small array number absent'
  result = contains?([2, 4, 6], 5)
  assert_false(result, desc)

  desc = 'large array number present'
  result = contains?([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 8)
  assert_true(result, desc)

  desc = 'large array number absent'
  result = contains?([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 0)
  assert_false(result, desc)

  desc = 'large array number first'
  result = contains?([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1)
  assert_true(result, desc)

  desc = 'large array number last'
  result = contains?([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10)
  assert_true(result, desc)
end

def assert_true(value, desc)
  puts "#{desc} ... #{value ? 'PASS' : "FAIL: #{value} is not true"}"
end

def assert_false(value, desc)
  puts "#{desc} ... #{value ? "FAIL: #{value} is not false" : 'PASS'}"
end

run_tests