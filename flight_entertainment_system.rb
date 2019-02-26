
# You've built an inflight entertainment system with on-demand movie streaming.

# Users on longer flights like to start a second movie right when their first one ends, but they complain that the plane usually lands before they can see the ending. So you're building a feature for choosing two movies whose total runtimes will equal the exact flight length.

# Write a method that takes an integer flight_length (in minutes) and an array of integers movie_lengths (in minutes) and returns a boolean indicating whether there are two numbers in movie_lengths whose sum equals flight_length.

# When building your method:

# Assume your users will watch exactly two movies
# Don't make your users watch the same movie twice
# Optimize for runtime over memory

# Solution
# We make one pass through movie_lengths, treating each item as the first_movie_length. At each iteration, we:

# See if there's a matching_second_movie_length we've seen already (stored in our movie_lengths_seen set) that is equal to flight_length - first_movie_length. If there is, we short-circuit and return true.
# Keep our movie_lengths_seen set up to date by throwing in the current first_movie_length.




require 'set'

def can_two_movies_fill_flight?(movie_lengths, flight_length)

  # movie lengths we've seen so far
  movie_lengths_seen = Set.new  #{}

  movie_lengths.any? do |first_movie_length|

    matching_second_movie_length = flight_length - first_movie_length

    p movie_lengths_seen

    if movie_lengths_seen.include?(matching_second_movie_length)
      # we found the match
       true
    else
      movie_lengths_seen.add(first_movie_length)
       false
    end
  end
end




# Tests

def run_tests
  desc = 'short flight'
  result = can_two_movies_fill_flight?([2, 4], 1)
  assert_false(result, desc)

  desc = 'long flight'
  result = can_two_movies_fill_flight?([2, 4], 6)
  assert_true(result, desc)

  desc = 'one movie half flight length'
  result = can_two_movies_fill_flight?([3, 8], 6)
  assert_false(result, desc)

  desc = 'two movies half flight length'
  result = can_two_movies_fill_flight?([3, 8, 3], 6)
  assert_true(result, desc)

  desc = 'lots of possible pairs'
  result = can_two_movies_fill_flight?([1, 2, 3, 4, 5, 6], 7)
  assert_true(result, desc)

  desc = 'not using first movie'
  result = can_two_movies_fill_flight?([4, 3, 2], 5)
  assert_true(result, desc)

  desc = 'only one movie'
  result = can_two_movies_fill_flight?([6], 6)
  assert_false(result, desc)

  desc = 'no movies'
  result = can_two_movies_fill_flight?([], 2)
  assert_false(result, desc)
end

def assert_true(value, desc)
  puts "#{desc} ... #{value ? 'PASS' : "FAIL: #{value} is not true"}"
end

def assert_false(value, desc)
  puts "#{desc} ... #{value ? "FAIL: #{value} is not false" : 'PASS'}"
end

run_tests