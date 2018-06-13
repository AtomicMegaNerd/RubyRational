require_relative "rational"

include Rcd

r1 = RcdRational.new(4, 8)
puts r1

r2 = RcdRational.new(3, 21)
puts r2

r3 = r1.reciprocal
puts r3

r4 = r1 + r2
puts r4

r5 = r1 - r2
puts r5

r6 = r2 / r1
puts r6

r7 = r2 * r1
puts r7
