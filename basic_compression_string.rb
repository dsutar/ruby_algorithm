#i mplement a method to perform basic compression on the string.
require 'Set'

#aaaabbcc = a4b2c2

def compression(string)

    array = string.split("")
    hash = Set.new

  array.each do |char|
     hash.include? char ? hash[char]+=1 : hash[char] = 1
    end


  str = ""
    hash.each do |k, v|
       str << "#{k}" + "#{v}"
    end

    str

    if (str.length >= string.length)
        string
    else 
        str
    end



  end





  p compression("aabbccdddd")