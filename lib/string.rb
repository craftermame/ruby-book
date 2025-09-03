
def section(title=nil)
  puts
  puts '='*80
  if title
    puts title
    puts '='*80
  end
end


section '% 記法'
# これ便利なのかな
# 「%q!...!」とするとシングルクオートで囲ったのと同じになる
# エスケープしなくていい
puts %q!He said, "Don't speak."!
something = 'Hi.'
puts %q!Say "#{something}"!
# q を大文字にするとダブルクオート
puts %Q!Say "#{something}"!
# 「!」だけでもダブルクオート
puts %!Say "#{something}"!


section '文字列はこれで改行できる'
puts 'Line 1,
Line 2'
puts "Line 1,
Line 2"


section 'ヒアドキュメント'
a = <<TEXT
これはヒアドキュメント。
複数行の文字列を作成するのに便利なんだって。
TEXT
puts a
html = <<HTML
<div>
  <p>HTMLとかもかけるらしい</p>
</div>
HTML
puts html
def some_method
  <<-TEXT
「<<-」を使うと最後の識別子をインデントできるみたい。
  ただし、内部の文字列のインデントは反映される。
  TEXT
end
puts some_method
def some_method
  <<~TEXT
  でも、「<<~」を使えば内部の文字列のインデントを無視する。
  TEXT
end
puts some_method
name = 'craftermame'
a = <<TEXT
ヒアドキュメントでは式展開も使える。
こんにちは、"#{name}" さん。
TEXT
puts a
puts 'ただし、開始の識別子をシングルクオートで囲うと式展開が無効になる。'
a = <<'TEXT'
ヒアドキュメントでは式展開も使える。
こんにちは、"#{name}" さん。
TEXT
puts a
