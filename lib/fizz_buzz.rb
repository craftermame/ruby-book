
def fizz_buzz(number)
  if number % 15 == 0
    'Fizz Buzz'
  elsif number % 5 == 0
    'Buzz'
  elsif number % 3 == 0
    'Fizz'
  else
    number.to_s
  end
end

puts fizz_buzz(0)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(5)
puts fizz_buzz(10)
puts fizz_buzz(13)
puts fizz_buzz(15)
