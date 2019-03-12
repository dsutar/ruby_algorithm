  class Fibber
  def initialize
    @memo = {}
  end

  def fib(n)

    # edge case: negative index
    if n < 0
      raise ArgumentError, "Index was negative. No such thing as a negative index in a series."
    # base case: 0 or 1
    elsif n == 0 || n == 1
      1
    # see if we've already calculated this
    elsif @memo.include?(n)
      @memo[n]
    else
      result = fib(n - 1) + fib(n - 2)

      # memoize
      @memo[n] = result

      result
    end
  end
end

puts Fibber.new.fib(5)

def fib_bottom_down(n)

    # edge cases:
    if n < 0
      raise ArgumentError, "Index was negative. No such thing as a negative index in a series."
    elsif n == 0 || n == 1
      1
    else
  
      # we'll be building the fibonacci series from the bottom up
      # so we'll need to track the previous 2 numbers at each step
      prev_prev = 1  # 0th fibonacci
      prev = 1       # 1st fibonacci
  
      (n - 1).times do
  
        # Iteration 1: prev = 2nd fibonacci
        # Iteration 2: prev = 3rd fibonacci
        # Iteration 3: prev = 4th fibonacci
        # To get nth fibonacci ... do n - 1 iterations.
  
        prev_prev, prev = prev, prev + prev_prev
      end
  
      prev
    end
  end

#   1 1 2 3 5 8
#   puts fib_bottom_down(5)