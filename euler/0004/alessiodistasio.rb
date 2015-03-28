#!/usr/bin/env ruby.

a, b, palindrome = 0, 0, 0
for i in 100..999
  for j in 100..999
    mul = i * j
      if mul.to_s==mul.to_s.reverse
        if mul > palindrome
          a, b, palindrome = i, j, mul
      end
    end
  end
end

puts "#{palindrome} = #{a} * #{b}"
