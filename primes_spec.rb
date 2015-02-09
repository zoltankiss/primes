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
end
