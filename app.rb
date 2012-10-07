def divisibleCoefficients(n,p)
  m = n 
  nondiv = 1
  while m > 0
    nondiv = nondiv * ((m % p) + 1)
    m = m / p
  end
  return (n + 1 - nondiv)
end

number_of_test_cases = 0;
input = []

number_of_test_cases = gets

number_of_test_cases = number_of_test_cases.gsub("\n","").to_i
number_of_test_cases.times do 
    sample = gets
    input << sample.gsub("\n","")
end

number_of_test_cases.times do |i|
 result = 0;
 n = input[i].split(" ").first.to_i;
 prime = input[i].split(" ").last.to_i;
 p divisibleCoefficients(n,prime)
end


