def check_permurations(str1, str2)

    if str1.length != str2.length
        return false
    end

    if (str1.chars.sort.join("") == str2.chars.sort.join(""))
        return true
    else
        return false
    end
end



puts check_permurations("Dev", "ved")


# logic count the number of space (new length)
# reverse direction replace with 0,2 and % and decerement newLength by 3
#1.4 coding interview
def escape_characters(str)

    #str.gsub!(" ","%20")
    newCount = 0

    stringArray = str.split('')

    stringArray.each { |c|
        if c == " "
            newCount = newCount + 1
        end
    }
    newLength = str.length + newCount * 2


    stringArray.reverse_each { |c|

        if c == " "
            stringArray[newLength - 1] = "0"
            stringArray[newLength - 2] = "2"
            stringArray[newLength - 3] = "%"
            newLength = newLength - 3
        else
            stringArray[newLength - 1] = c
            newLength = newLength - 1
        end

    }
    stringArray.join("")

end

puts escape_characters("dev sutar  shreya   ")