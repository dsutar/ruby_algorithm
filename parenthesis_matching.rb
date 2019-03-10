


'(( (()) ) )'

  def get_closing_paren(sentence, opening_paren_index)
    open_nested_parens = 0
  
    (opening_paren_index + 1).upto(sentence.length - 1) do |position|
      char = sentence[position]
  
      if char == '('
        open_nested_parens += 1
      elsif char == ')'
        if open_nested_parens == 0
          return position
        else
          open_nested_parens -= 1
        end
      end
    end
  
    raise 'No closing parenthesis :('
  end

  # Tests
  
  def run_tests
    desc = 'all openers then closers'
    actual = get_closing_paren('(({(((}]]{]]]})}]}}))))', 2)
    expected = 7
    assert_equal(actual, expected, desc)
  
  end
  
  def assert_equal(a, b, desc)
    if a == b
      puts "#{desc} ... PASS"
    else
      puts "#{desc} ... FAIL: #{a} != #{b}"
    end
  end
  
  def assert_raises(desc)
    begin
      yield
      puts "#{desc} ... FAIL"
    rescue
      puts "#{desc} ... PASS"
    end
  end
  
  run_tests