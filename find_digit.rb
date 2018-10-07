=begin
Complete the function that takes two numbers as input, num and nth and return the nth digit of num (counting from right to left).

Note
If num is negative, ignore its sign and treat it as a positive value
If nth is not positive, return -1
Keep in mind that 42 = 00042. This means that findDigit(42, 5) would return 0
=end
def find_digit(num, nth)
  num = num.abs

  if nth <= 0 
    return -1
  elsif (nth > num.to_s.length) 
    return 0
  else
    return num.to_s[num.to_s.length - nth].to_i
  end  
end

find_digit(5673, 4)     #returns 5
#=begin
find_digit(129, 2)      #returns 2
find_digit(-2825, 3)    #returns 8
find_digit(-456, 4)     #returns 0
find_digit(0, 20)       #returns 0
find_digit(65, 0)       #returns -1
find_digit(24, -8)      #returns -1
#=end