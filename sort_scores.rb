  def sort_scores(unsorted_scores, highest_possible_score)

  # array of 0s at indices 0..highest_possible_score
  score_counts = [0] * (highest_possible_score+1)

  # populate score_counts
  # Another common way to get O(n)O(n) runtime is to use counting. ↴
  # We can build an array score_counts where the indices represent scores and 
  # the values represent how many times the score appears. 
  # Once we have that, can we generate a sorted array of scores?
  unsorted_scores.each do |score|
    score_counts[score] += 1
  end
  

  # populate the final sorted array
  sorted_scores = []

  # for each item in score_counts
  highest_possible_score.downto(0) do |score|
    count = score_counts[score]
    
    puts count

    # for the number of times the item occurs
    (0...count).each do |time|

      # add it to the sorted array
      sorted_scores.push(score)
    end
  end

  return sorted_scores
end

def run_tests
  # desc = 'no scores'
  # actual = sort_scores([], 100)
  # expected = []
  # assert_equal(actual, expected, desc)

  # desc = 'one score'
  # actual = sort_scores([55], 100)
  # expected = [55]
  # assert_equal(actual, expected, desc)

  # desc = 'two scores'
  # actual = sort_scores([30, 60], 100)
  # expected = [60, 30]
  # assert_equal(actual, expected, desc)

  desc = 'many scores'
  actual = sort_scores([37, 89, 41, 65, 91, 53], 100)
  expected = [91, 89, 65, 53, 41, 37]
  assert_equal(actual, expected, desc)

  # desc = 'repeated scores'
  # actual = sort_scores([20, 10, 30, 30, 10, 20], 100)
  # expected = [30, 30, 20, 20, 10, 10]
  # assert_equal(actual, expected, desc)
end

def assert_equal(a, b, desc)
  if a == b
    puts "#{desc} ... PASS"
  else
    puts "#{desc} ... FAIL: #{a} != #{b}"
  end
end

run_tests