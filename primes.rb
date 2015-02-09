class Primes
  class << self
    def multiplication_table(n)
      first_n_primes = first_n_primes(n)
      longest_product_length = longest_product_length(first_n_primes.last)
      output = ''
      ([1] + first_n_primes).each do |row_prime|
        output << '|'
        ([1] + first_n_primes).each do |col_prime|
          product = row_prime * col_prime
          product = '' if product == 1
          output <<  "#{product}#{' ' * (longest_product_length - product.to_s.length)}|"
        end
        output << "\n"
      end
      output
    end

    def first_n_primes(n)
      if n == 1
        [2]
      else
        first_n_minus_one_primes = first_n_primes(n - 1)
        next_prime = first_n_minus_one_primes.last + 1
        while true
          break if !has_divisor?(first_n_minus_one_primes, next_prime)
          next_prime += 1
        end
        first_n_minus_one_primes + [next_prime]
      end
    end

    private
      def has_divisor?(lst, n)
        lst.any? { |element| n % element == 0 }
      end

      def longest_product_length(n)
        (n * n).to_s.length
      end
  end
end
