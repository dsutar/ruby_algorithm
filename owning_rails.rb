# Explain how everything in ruby is object.

1.to_s


# Ruby

# module
#     include
#     extends
# module are used also used namespacing

module Vegeterian
    def eat_meat?
        false
    end
end



class Food
    extend Vegeterian
end


puts Food.eat_meat?
#puts fd.eat_meat?


s = "hi"

s.extend Vegeterian

puts s.eat_meat?



module ActiveRecord
    class Base
        def self.has_many(association, options={})
            p[association, options]
        end
    end
end


class User < ActiveRecord::Base
    has_many :roles, dependent: :destroy
end



my_proc = proc do 
    puts "hellp dev"
end

my_proc.call


def hug
    puts "{"
        yield
    puts "}"
end

hug { puts "dev here" }

