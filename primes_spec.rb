require File.expand_path('../primes.rb', __FILE__)

describe Primes do
  describe '.multiplication_table' do
    it 'generates a multiplication table of primes' do
      expect(described_class.multiplication_table(3)).to eq(
<<-TEXT
|  |2 |3 |5 |
|2 |4 |6 |10|
|3 |6 |9 |15|
|5 |10|15|25|
TEXT
      )
    end
  end

  describe '.first_n_primes' do
    it 'calculates the first n primes' do
      expect(described_class.first_n_primes(10)).to eq(
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
      )
    end
  end
end
