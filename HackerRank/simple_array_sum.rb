#Problem
#Given an array of integers, find the sum of elements.
#For example, if the array ar = [1, 2,3], 1 + 2 + 3 = 6, so return 6.

#!/bin/ruby

#
# Complete the simpleArraySum function below.
#
def simpleArraySum(ar)
  #
  # Write your code here.
  #
  sum = 0
  ar.each do |item|
    sum += item
  end

  return sum

end
ar = [1,2,3]
puts simpleArraySum(ar)

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# ar_count = gets.to_i

# ar = gets.rstrip.split(' ').map(&:to_i)

# result = simpleArraySum ar

# fptr.write result
# fptr.write "\n"

# fptr.close()

