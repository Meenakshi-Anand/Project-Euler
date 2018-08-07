def largest_palindrome
  product = 1
  largest_product= 1
  number = 999

  while (number > 100)

    (100..999).each do |num|
      product = num * number
      # check if product is palindrome and the largest product found 
      largest_product = product  if (product == product.to_s.reverse.to_i && product > largest_product)
    end

    number -= 1
  end

largest_product
end

print largest_palindrome
