# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
    require 'set'
    #alice.z@leetcode.com is same as alicez@leetcode.com
    #m.y+name@leetcode.com is my@leetcode.com
    
    # seperate domain name and locallaame
    s1 = Set[]  
    emails.each_with_index{ |emailId, index|
        name = emailId.split("@")

         local = name[0]
         domain = name[1]

         if local.include?("+")
                local = local.split("+")
                local = local[0]
         end

         if local.include?(".")
            local.gsub!(".", "")
        end

        s1.add(local+domain)
            
        }

        p s1
    return s1.length
    
end


puts num_unique_emails(["test.email@leetcode.com","test.e.mail@leetcode.com","testemail@lee.tcode.com"])