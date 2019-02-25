# You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.

# Write a method get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.



#[1, 7, 3, 4] =>  [84, 12, 28, 21]

# We'll calculate products_of_all_ints_before_index as:

# If the input array is [2, 4, 10], the product of all the numbers before each index is [1, 2, 8]
# And we'll calculate products_of_all_ints_after_index as:

# If the input array is [2, 4, 10], the product of all the numbers after each index is [40, 10, 1]
# If we take these arrays and multiply the integers at the same indices, we get:

# The product of all the numbers before an index times the product of all 
# the numbers after an index is the product of the numbers at all other indices: 1*40=40, 2*10=20, 8*1=8.


def get_products_of_all_ints_except_at_index(int_array)

    if int_array.length < 2
      raise IndexError, 'Getting the product of numbers at other indices requires at least 2 numbers'
    end
  
    products_of_all_ints_except_at_index = []
  
    # for each integer, we find the product of all the integers
    # before it, storing the total product so far each time
    product_so_far = 1
    i = 0
    while i < int_array.length
      products_of_all_ints_except_at_index[i] = product_so_far
      product_so_far *= int_array[i]
      i += 1
    end
  
    # for each integer, we find the product of all the integers
    # after it. since each index in products already has the
    # product of all the integers before it, now we're storing
    # the total product of all other integers
    product_so_far = 1
    i = int_array.length - 1
    while i >= 0
      products_of_all_ints_except_at_index[i] *= product_so_far
      product_so_far *= int_array[i]
      i -= 1
    end
  
    return products_of_all_ints_except_at_index
  end







puts get_products_of_all_ints_except_at_index([1,7,2,2])