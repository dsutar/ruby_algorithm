

def unique_string str

    strArray = []


    str.each_byte do |item|
        if strArray.include? item
            return false
        else
            strArray << item
        end
    end

    return true

end

puts unique_string "abcsde"

puts unique_string "abc"

puts unique_string "cdfgt"


##convert into lower case
# @param {String} str
# @return {String}
def to_lower_case(str)
    str.chars.map{ |x| x == x.upcase ? x.downcase : x }.reduce(:+)
end
