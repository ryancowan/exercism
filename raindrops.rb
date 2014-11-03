require 'prime'

# Converts a number to a string, which depends on the number's prime factors.
class Raindrops
  def self.convert(number)
    primes = (Prime.prime_division(number).flatten.uniq & [3, 5, 7])

    if primes.length > 0
      # string = ''

      # string << 'Pling' if primes.include? 3
      # string << 'Plang' if primes.include? 5
      # string << 'Plong' if primes.include? 7

      # string
      primes.map do |prime|
        puts prime
        prime = 'Pling' if prime == 3
        prime = 'Plang' if prime == 5
        prime = 'Plong' if prime == 7
      end
    else
      number.to_s
    end
  end
end

puts Raindrops.convert(105)
