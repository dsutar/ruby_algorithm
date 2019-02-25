def reverse_words!(message)

    # first we reverse all the characters in the entire message
    reverse_characters!(message, 0, message.length-1)
    # this gives us the right word order
    # but with each word backward
  
    # now we'll make the words forward again
    # by reversing each word's characters
  
    # we hold the index of the *start* of the current word
    # as we look for the *end* of the current word
    current_word_start_index = 0
  
    for i in 0..message.length
  
      # found the end of the current word!
      if (message[i] == ' ') || (i == message.length)
  
        reverse_characters!(message, current_word_start_index, i - 1)
  
        # if we haven't exhausted the string our
        # next word's start is one character ahead
        current_word_start_index = i + 1
      end
    end
  end
  
  def reverse_characters!(message, left_index, right_index)
  
    # walk towards the middle, from both sides
    while left_index < right_index
  
      # swap the left char and right char
      message[left_index], message[right_index] = \
        message[right_index], message[left_index]
  
      left_index  += 1
      right_index -= 1
  
    end
  end


  #Hashing algorithm, Consitent hashing
  # LRU (Least resource used)
  # 