# create a stack and push the element in the stack
# pop the stack and compare with the current character in string
# if the current character matches with the closing bracket of the string then contrinue
# if this doesnt matches with current string return false

def is_matching_pair?(char1, char2)
    if (char1 == "(" && char2 == ")")
      return true
    elsif (char1 == "[" && char2 == "]")
        return true
    elsif (char1 == "{" && char2 == "}")
        return true
    else 
        return false
    end
end


def matching_parenthesis(str)
    arrStack = []

    str.chars.each do |char|
        if (char == "("  || char == "{" || char == "[")
            arrStack.push(char)
        end

        if (char == "}"  || char == ")" || char == "]") 
            if arrStack.empty?
                return false
            else
                s = arrStack.pop
                
                if (!is_matching_pair?(s, char))
                    return false
                end

            end
        end
    end

    if (arrStack.empty?)
        return true
      else
        return false
      end  


    
end
 def run_tests
    desc = 'all openers then closers'
    actual = matching_parenthesis('()')
    expected = true
    assert_equal(actual, expected, desc)

    desc = 'all openers square bracket'
    actual = matching_parenthesis('[][][]')
    expected = true
    assert_equal(actual, expected, desc)

    desc = 'alternate'
    actual = matching_parenthesis('({[]})')
    expected = true
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