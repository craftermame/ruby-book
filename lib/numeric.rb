require_relative './utils'

section 'Base-n'
puts 0b11111111
puts 0377
puts 0xff

section 'Bit Operation'
puts (~0b1011).to_s(2)  # to_s(n)でn進法
puts (0b1010 & 0b1100).to_s(2)
puts (0b1010 | 0b1100).to_s(2)
puts (0b1010 ^ 0b1100).to_s(2)
puts (0b1010 >> 1).to_s(2)
puts (0b1010 << 1).to_s(2)

section 'Exponent'
puts 2e3   # 2 * 10^3
puts 2e-3  # 2 * 10^(-3)

section 'Numeric Class'
puts 10.class  # Integer
puts 1.5.class # Float

# ほかにも複素数とかがあるらしい
# いまは skip
