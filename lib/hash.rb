require_relative './utils'

inventory = { 'apple' => 100, 'banana' => 50 }
text = 'ruby is great and ruby is fun'

section 'Basics'
p inventory
inventory['orange'] = 75
p inventory

puts "banana count: #{inventory['banana']}"

inventory.delete('apple')
p inventory

# .include and .key mean the same process
puts "Are there apples?: #{inventory.include?('apple')}"
puts "Are there oranges?: #{inventory.key?('orange')}"

section 'Initialize hash-table with a default value'
# Set default value: Hash.new(<default_value>)
word_count = Hash.new(0)
text.split.each do |word|
  word_count[word] += 1  # this is avalable
end
p word_count
puts "ruby count: #{word_count['ruby']}"
puts "python count: #{word_count['python']}"

section 'Loop'
inventory['apple'] = 100
inventory.each do |key, value|
  puts "#{key} count is #{value}."
end

section 'Practice'
results = [
  "Alice:Win",
  "Bob:Lose",
  "Alice:Lose",
  "Charlie:Win",
  "Bob:Win",
  "Alice:Win"
]

# Question
# 各プレイヤーが勝った回数をカウントし、{ プレイヤー名 => 勝利回数 }
# のハッシュとして出力してください。

# Answer
player_win = Hash.new(0)
results.each do |token|
  player, result = token.split(':')
  if result == 'Win'
    player_win[player] += 1
  end
end
p player_win
