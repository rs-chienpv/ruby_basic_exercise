# Function to check whether a value exists in an array.
# Input: ["Red", "Green", "Blue", "White"], "Red"
# Output: true
# 
def exercise_1(array, number)
  array.include?(number)
end

# Function to check whether 7 appears as either the first or last element in a given array. 
# The array length must be 1 or more.
# Input: [7, 1, 2, 3]
# Output: true
def exercise_2(array)
  return false if array.empty?
  array[0] == 7 || array[-1] == 7
end

# Function to pick number of random elements from a given array.
# Input: [12, 34, 23, 56], 2
# Output: [12, 34]
#
def exercise_3(array, number)
  p array.sample(number)
end

# Function to check whether first and the last element are the same of a given array of integers. 
# The array length must be 1 or more.
# Input: [12, 34, 23, 56, 12]
# Output: true
def exercise_4(array)
  return false if array.empty?
  array[0] == array[-1] 
end

# Function to compute the sum of elements in a given array.
# Input: [12, 34, 23, 56]
# Output: 125
#
def exercise_5(array)
  p array.sum
end

# Function to remove duplicate elements from a given array.
# Input: [1, 2, 3, 4, 1, 2, 2, 3, 5, 6]
# Output: [1, 2, 3, 4, 5, 6]
#
def exercise_6(array)
  p array.uniq
end

# Function to check two given arrays of integers and test whether they have the same first element or they have the same last element.
# Both arrays length must be 1 or more.
# Input: [1, 2, 5], [7, 5]
# Output: true
def exercise_7(array_1, array_2)
  return false if array_1.empty? && array_2.empty?
  array_1[0] == array_2[0] || array_1[-1] == array_2[-1]
end

# Function to remove blank elements from a given array.
# Input: ["Red", "Green", "", "Blue", "White"]
# Output: ["Red", "Green", "Blue", "White"]
#
def exercise_8(array)
  array.reject(&:empty?)
end

# Function to compute the sum of all the elements. The array length must be 3 or more.
# Input: [1, 2, 5]
# Output: 8
#
def exercise_9(array)
  return 0 if array.size < 3
  array.sum
end

# Funcion to split a delimited string into an array
# Input: Red, Green, Blue, White,1, 3, 4, 5, 7
# Output: ["Red", " Green", " Blue", " White"], [1, 3, 4, 5, 7]
#
def exercise_10(string)
  str_arr, num_arr = string.split(",").map(&:strip).partition { |e| e.match?(/\D/) }
  num_arr = num_arr.map(&:to_i)
  p str_arr
  p num_arr
end

# Function to create an array with the elements "rotated left" of a given array of ints length 3.
# Input: [1, 2, 5]
# Output: [2, 5, 1]
#
def exercise_11(array)
  p array.rotate(-2)
end

# Function to create a new array with the elements in reverse order from a given an array of integers length 3.
# Input: [1, 2, 5]
# Output: [5, 2, 1]
#
def exercise_12(array)
  p array.reverse
end

# Function to find the larger between the first and last elements of a given array of integers of length 3.
# Replace all the other values to be that value. Return the changed array.
# Input: [1, 2, 5]
# Output: [5, 5, 5]
def exercise_13(array)
  Array.new(array.size, array.max)
end

# Function to compute the sum of the first 2 elements of a given array of integers. If the array length is less than 2, just sum up the elements that exist, returning 0 if the length of the array is 0.
# Input: [1, 2, 5]
# Output: 3
#
def exercise_14(array)
  return 0 if array.empty?
  array.size >= 2 ? array[0] + array[1] : array[0]
end

# Function to create an array of length 2 containing their middle elements from two given arrays of integers of length 3.
# Input: [1, 2, 5], [3, 4, 2]
# Output:  [2, 4]
#
def exercise_15(array_1, array_2)
  [array_1[1], array_2[1]]
end

# Function to concatenate array of arrays into one.
# Input: [10, 20, [30, [40, 50]]]
# Output: [10, 20, 30, 40, 50]
#
def exercise_16(array)
  p array.flatten
end

# Function to check whether a given array of integers of length 2 contains a 4 or a 7.
# Input: [1, 4, 5]
# Output: true
#
def exercise_17(array)
  array.include?(4) || array.include?(7)
end

# Function to check whether a given array of integers of length 2 does not contain a 6 or a 9.
# Input: [1, 6, 3]
# Output: true
#
def exercise_18(array)
  array.include?(6) || array.include?(9)
end

# Function to check whether a given array of integers contains 3 twice, or 5 twice. The array will be length 0, 1, or 2.
# Input: [3, 3]
# Output: true
#
def exercise_19(array)
  return false if array.size != 2
  array[0] == 3 && array[1] == 3 || array[1] == 5 && array[0] == 5
end

# Function to set 5 to 1 whether there is a 3 immediately followed by a 4 in a given array of integers (length 3).
# Input: [1, 3, 5]
# Output: [1, 3, 1]
#
def exercise_20(array)
  array[array.index(3) + 1] = 1 if array.index(3) && array[array.index(3) + 1] == 5
  array
end

# Function to compute the sum of two arrays (length 3) and return the array which has the largest sum.
# Input: [1, 3, 5], [2, 4, 4]
# Output: [2, 4, 4]
#
def exercise_21(array_1, array_2)
  array_2.sum < array_1.sum ? p(array_1) : p(array_2)
end

# Function to create a new array of length 2 containing the middle two elements from a given array of integers of even length 2 or more.
# Input: [1, 3, 5, 4]
# Output: [3, 5]
#
def exercise_22(array)
  array[array.size/2 - 1..array.size/2]
end

# Function  to create a new array of length 4 containing all their elements from two array of integers, length 2.
# Input: [1, 3], [5, 4]
# Output: [1, 3, 5, 4]
#
def exercise_23(array_1, array_2)
 array_1 + array_2
end

# Function to swap the first and last elements of a given array of integers, length will be at least 1. Return the modified array.
# Input: [11, 3, 5, 21]
# Output: [21, 3, 5, 11]
#
def exercise_24(array)
  array[0], array[-1] = array[-1], array[0]
  p array
end

# Function to create a new array of length 3 containing the elements from the middle of a given array of integers of odd length (at least 3).
# Input: [1, 2, 3, 7, 9]
# Output: [2, 3, 7]
#
def exercise_25(array)
  array.slice(array.size/2 - 1, 3)
end

# Function to find the largest value from a given array of integers of odd length. The array length will be a least 1.
# Input: [1, 3, 4]
# Output: 4
#
def exercise_26(array)
  !array.empty? && array.size.odd? ? array.max : array
end

# Function to create a new array using first three elements of a given array of integers. If the length of the given array is less than three return the original array.
# Input: [1, 3, 4, 5, 6, 7]
# Output: [1, 3, 4]
#
def exercise_27(array)
  array.size > 3 ? array[0..2] : array
end

# Function to create a new array with the first element of two arrays. If length of any array is 0, ignore that array.
# Input: [3, 4, 5, 6], [7, 3, 4]
# Output: [3, 7]
#
def exercise_28(array_1, array_2)
  [array_1[0], array_2[0]].compact
end

# Function to get the number of even integers in a given array.
# Input: [1, 3, 4, 5, 6, 7]
# Output: 2
#
def exercise_29(array)
  array.count { |i| i.even?}
end

# Function to find the difference between the largest and smallest values of a given array of integers and length 1 or more.
# Input: [3, 4, 5, 6]
# Output: 3
#
def exercise_30(array)
  (array.minmax[0] - array.minmax[1]).abs
end

# Function to compute the average values of a given array of except the largest and smallest values. The array length must be 3 or more.
# Input: [3, 4, 5, 6]
# Output: 4.5
#
def exercise_31(array)
  array.sort[1..-2].sum / (array.size - 2).to_f
end

# Function to compute the sum of the numbers of a given array except the number 17 and numbers that come immediately after a 17. Return 0 for an empty array.
# Input: [3, 5, 17, 15]
# Output: 8
#
def exercise_32(array)
  array[0...array.index(17)].reduce(0){ |sum, value| sum + value }
end

# Function to check whether the sum of all the 3's of a given array of integers is exactly 9.
# Input: [3, 5, 3, 3]
# Output: true
#
def exercise_33(array)
  array.reduce(0){ |sum, value| value == 3 ? sum + value : sum } == 9 
end

# Function to check whether the number of 2's is greater than the number of 5's of a given array of integers.
# Input: [2, 3, 2, 5]
# Output: true
#
def exercise_34(array)
  array.count(2) > array.count(5)
end

# Function a Ruby program to check whether every element is a 3 or a 5 in a given array of integers.
# Input: [3, 5, 3, 3]
# Output: true
#
def exercise_35(array)
  !(array.select{|value| value != 3 && value != 5}.size > 0)
end

# Function  to check whether it contains no 3 or it contains no 5.
# Input: [3, 7, 3, 3]
# Output: true
#
def exercise_36(array)
  array.include?(3) ^ array.include?(5)
end

# Function to check whether a given value appears everywhere in a given array. A value is "everywhere" in an array if it presents for every pair of adjacent elements in the array.
# Input: [3, 7, 3, 3], 3
# Output: true
#
def exercise_37(array, number)
  array.each_cons(2){ |a, b| return true if (a == b && b == number)}
  return false
end

# Function to check whether a given array contains a 3 next to a 3 or a 5 next to a 5, but not both.
# Input: [3, 3, 7, 5]
# Output: true
#
def exercise_38(array)
  string = array.join
  string.include?('33')^string.include?('55')
end

# Function to check whether a given array of integers contains two 6's next to each other, or there are two 6's separated by one element,
# Input: [6, 3, 6, 5]
# Output: true
#
def exercise_39(array)
  array.each_cons(3){ |a, b, c| return true if a == b || a == c}
  return false
end

# Function to check whether there is a 2 in the array with a 3 somewhere later in a given array of integers.
# Input: [6, 2, 3, 5]
# Output: true
#
def exercise_40(array)
  return false unless array.include?(2)
  array[array.index(2)..-1].include?(3)
end

# Function to check whether the value 2 appears in a given array of integers exactly 2 times, and no 2's are next to each other.
# Input: [2, 1, 2, 5, 6]
# Output: true
#
def exercise_41(array)
  array.each_cons(2){ |a, b| return false if (a == b && b == 2)}
  array.count(2) == 2
end

# Function to convert an array into an index hash
# Input: [10, 20, 30, 40]
# Output: {10=>nil, 20=>nil, 30=>nil, 40=>nil}
#
def exercise_42(array)
  array.each_with_object({}) { |value, hash| hash[value] = nil }
end

# Function to find most occurred item in a given array.
# Input: [10, 20, 30, 40, 10, 10, 20]
# Output: {10=>3, 20=>2, 30=>1, 40=>1}
#
def exercise_43(array)
  array.each_with_object({}) { |value, hash| hash[value] = array.count(value) }
end

# Function to check whether all items are identical in a given array.
# Input: [10, 20, 30, 40, 10, 10, 20]
# Output: false
#
def exercise_44(array)
  array.all?(array[0])
end

# Function to search items start with specified string of a given array.
# Input: ["abcde", "abdf", "adeab", "abdgse", "bdefa", "bacdef"], "ab"
# Output: ["abcde", "abdf", "abdgse"]
#
def exercise_45(array, string)
  array.select { |item| item.start_with?(string)}
end

# Function to iterate an array starting from the last element.
# Input: [10, 20, 30, 40, 10, 10, 20]
# Output: 20, 10, 10, 40, 30, 20, 10
#
def exercise_46(array)
  array.reverse.each{ |item| p item }
end

# Function to iterate over the first n elements of a given array.
# Input: ["abcde", "abdf", "adeab", "abdgse", "bdefa", "bacdef"]
# Output: ["abcde", "abdf", "adeab"]
#
def exercise_47(array)
  p array.first(3)
end

# Function to sort a given array of strings by length.
# Input: ["abcde", "abdf", "adeab", "abdgeee", "bdefa", "abc", "ab", "a", "bacdef"]
# Output: ["a", "ab", "abc", "abdf", "abcde", "adeab", "bdefa", "bacdef", "abdgeee"]
#
def exercise_48(array)
  p array.sort_by {|item| item.length}
end