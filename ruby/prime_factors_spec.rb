def prime_factors_cheat(num)
	return case num
	when 1
		[]
	when 2
		[2]
	when 3
		[3]
	when 4
		[2, 2]
	when 5
		[5]
	when 6
		[2, 3]
	when 7
		[7]
	when 8
		[2, 2, 2]
	when 9
		[3, 3]
	end
end

def prime_factors_simple(num)
	result = []
	remainder = num
	while remainder > 1
		if remainder % 2 == 0
			result.push(2)
			remainder = remainder / 2
		elsif remainder % 3 == 0
			result.push(3)
			remainder = remainder / 3
		elsif remainder % 5 == 0
			result.push(5)
			remainder = remainder / 5
		elsif remainder % 7 == 0
			result.push(7)
			remainder = remainder / 7
		else
			result.push(remainder)
			remainder = 0
		end
	end
	return result
end

def prime_factors(num)
	primes = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]
	result = []
	remainder = num
	while remainder > 1
		found_result = false
		for prime in primes
			if remainder % prime == 0
				result.push(prime)
				remainder = remainder / prime
				found_result = true
			end
		end
		if not found_result
			puts "error"
		end
	end
	return result.sort
end

RSpec.describe "Prime Factors" do

  it "has factors of [] for 1" do
    expect(prime_factors(1)).to eq []
  end

  it "has factors of [2] for 2" do
    expect(prime_factors(2)).to eq [2]
  end

  it "has factors of [3] for 3" do
    expect(prime_factors(3)).to eq [3]
  end

  it "has factors of [2, 2] for 4" do
    expect(prime_factors(4)).to eq [2, 2]
  end

  it "has factors of [5] for 5" do
    expect(prime_factors(5)).to eq [5]
  end

  it "has factors of [2, 3] for 6" do
    expect(prime_factors(6)).to eq [2, 3]
  end

  it "has factors of [7] for 7" do
    expect(prime_factors(7)).to eq [7]
  end

  it "has factors of [2, 2, 2] for 8" do
    expect(prime_factors(8)).to eq [2, 2, 2]
  end

  it "has factors of [3, 3] for 9" do
    expect(prime_factors(9)).to eq [3, 3]
  end

  it "has factors of [2, 5] for 9" do
    expect(prime_factors(10)).to eq [2, 5]
  end

  it "has factors of [11] for 11" do
    expect(prime_factors(11)).to eq [11]
  end

  it "has factors of [2, 2, 3] for 12" do
    expect(prime_factors(12)).to eq [2, 2, 3]
  end

  it "has factors of [13] for 13" do
    expect(prime_factors(13)).to eq [13]
  end

  it "has factors of [2, 7] for 14" do
    expect(prime_factors(14)).to eq [2, 7]
  end

  it "has factors of [3, 5] for 14" do
    expect(prime_factors(15)).to eq [3, 5]
  end

  it "has factors of [2, 2, 2, 2] for 16" do
    expect(prime_factors(16)).to eq [2, 2, 2, 2]
  end

  it "has factors of [5, 5] for 25" do
    expect(prime_factors(25)).to eq [5, 5]
  end

  it "has factors of [7, 7] for 49" do
    expect(prime_factors(49)).to eq [7, 7]
  end

end
