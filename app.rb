#class Permutation
  #@@store = {}

  #def self.fact_recursion num
    #return 1 if(num == 0)
    #return @@store[num] unless  @@store[num].nil?
    #fact =  (num * fact_recursion(num-1))
    #@@store[num] = fact
    #fact
  #end

  #def self.getCache
    #@@store
  #end

#end

def Math.nCr(n,r)
  a, b = r, n-r
  a, b = b, a if a < b  # a is the larger
  numer = (a+1..n).inject(1) { |t,v| t*v }  # n!/r!
  denom = (2..b).inject(1) { |t,v| t*v }    # (n-r)!
  numer/denom
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
 #binding.pry
 (1..n).each do |i|
  if(((Math.nCr(n , i)) % prime) == 0)
    result = result + 1
  end
 end
 p result
end


