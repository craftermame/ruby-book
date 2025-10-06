require_relative './utils'

numbers = [1, 2, 3, 4, 5, 6]
words = ['Hello', 'World', 'Ruby']

section 'Double every elements'
doubled = numbers.map do |n|
  n * 2
end
p doubled

section 'Select (filter) elements'
# .filter and .select mean same processing
# choose a method by the context
evens = numbers.select do |n|
  n.even?
end
p evens

section 'Reject elements'
odds = numbers.reject do |n|
  n.even?
end
p odds

section 'Reduce (inject) elements'
# .reduce and .inject have the same relationship of .filter and .select
# .reduce returns not an array but a value
# .reduce(<initial_value_of_accumlator>)
sum = numbers.reduce(0) do |accumulator, current_number|
  accumulator + current_number
end
p sum
sentence = words.reduce('') do |accumulator, current_word|
  accumulator + ' ' + current_word
end.lstrip + '.'
p sentence

section 'Practice'

scores = [
  {name: "Alice", score: 85, passed: true},
  {name: "Bob", score: 40, passed: false},
  {name: "Charlie", score: 92, passed: true},
  {name: "David", score: 78, passed: true},
  {name: "Eve", score: 55, passed: false}
]

# Questions
# 1. 合格者（passed: true の人）の名前だけをすべて取り出し、新しい配列としてください。
# 2. 合格者全員のスコアを合計し、一つの数値としてください。
# 3. 合格者のスコアを全て10点加算し、新しいスコア配列としてください。（例: 85 → 95）

# Q.1
passed_list = scores.select { |s| s[:passed] }.map { |s| s[:name] }
p passed_list

# Q.2
sum_score = scores.select { |s| s[:passed] }.reduce(0) do |acc, result|
  acc + result[:score]
end
p sum_score

# Q.3
new_scores = scores.map do |s|
  if s[:passed]
    s[:score] += 10
  else
    s[:score]
  end
end
p new_scores
