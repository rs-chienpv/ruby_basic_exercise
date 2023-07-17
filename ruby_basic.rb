# Function to get ruby version with patch number.
# Output: Ruby Version: 2.4.2, Ruby Patch Level: 198
#
def exercise_1
  p 'Ruby Version: ' << RUBY_VERSION
  p 'Ruby Patch Level: ' << RUBY_PATCHLEVEL.to_s
end

# Function to display the current date and time.
# Output: Current Date and Time: 27/12/2017 06:04
#
def exercise_2
  require 'date'
  current_time = DateTime.now.strftime('%d/%m/%Y %H:%M')
  p "Current Date and Time: #{current_time}"
end

# Function to create a new string which is n copies of a given string where n is a non-negative integer.
# Input: "a", 6
# Output: aaaaaa
#
def exercise_3(string, number)
  string * number
end

# Function which accept the radius of a circle from the user and compute the parameter and area.
# Input: 5
# Output: Input the radius of the circle: The perimeter is 31.41592653. The area is 78.539816325.
#
def exercise_4
  radius = gets.to_f
  perimeter = (radius * Math::PI * 2).round(8).to_s
  area = (radius**2 * Math::PI).round(8).to_s
  p "Input the radius of the circle: The perimeter is #{perimeter}."
  p "The area is #{area}."
end

# Function to check whether a string starts with "if"
# Input: "ifelse"
# Output: true
#
def exercise_5(string)
  string.start_with?('if')
end

# Function which accept the user's first and last name and print them in reverse order with a space between them.
# Input: "chien", "van"
# Output: van chien
#
def exercise_6
  p 'Input your first name: '
  first_name = gets.strip
  p 'Input your last name: '
  last_name = gets.strip
  p "Hello #{last_name} #{first_name}"
end

# Function to accept a filename from the user print the extension of that.
# Output: File name: test.rb, Base name: test, Extention: .rb, Path name: /user/system
#
def exercise_7
  file = 'BaiTap/ruby_basic.rb'
  file_name = File.basename file
  base_name = File.basename file, '.rb'
  extention = File.extname file
  path_name = File.path file
  p "File name: #{file_name}"
  p "Base name: #{base_name}"
  p "Extention: #{extention}"
  p "Path name: #{base_name}"
end

# Function to check two integer values whether either of them is in the range 20..30 inclusive.
# Input: 25, 99
# Output: true
#
def exercise_8(number_1, number_2)
  (20..30).include?(number_1) || (20..30).include?(number_2)
end

# Function to check three numbers and return true if one or more of them are small. A number is called "small" if it is in the range 1..10 inclusive.
# Input: [1, 2, 3]
# Output: true
#
def exercise_9(number_1, number_2, number_3)
  (1..10).include?(number_1) || (1..10).include?(number_2) || (1..10).include?(number_3)
end

# Function to check three numbers and return true if one or the other is small, but not both. A number is called "small" if it is in the range 1..10 inclusive.
# Input: [1, 21, 33]
# Output: true
#
def exercise_10(number_1, number_2, number_3)
  array_check = [number_1, number_2, number_3]
  array_check.one? { |x| (1..10).include? x }
end

# Function to print the following 'here document'.
#
def exercise_11
  p here_documet = <<~END
  _TEXT
    Sample string :
    a string that you "don't" have to escape
    This
    is a ....... multi-line
    heredoc string --------> example
  END
  _TEXT
end

# Function to create a new string where "if" is added to the front of a given string. If the string already begins with "if", return the string unchanged.
# Input: "if else"
# Output: if else
#
def exercise_12(string)
  string.start_with?('if') ? string : string.prepend('if ')
end

# Function to create a new string from a given string using the first three characters or whatever is there if the string is less than length 3. Return n copies of the string.
# Input: 'abcdefg', 2
# Output: abcabc
#
def exercise_13(string, number)
  string.length < 3 ? string * number : string[0..2] * number
end

# Function  which accept the radius of the sphere as input and compute the volume.
# Input: 5
# Output: Input the radius of the circle: The volume of the sphere is : 392.699081625.
#
def exercise_14
  radius = gets.to_f
  volume = ((radius**3) * Math::PI * (4 / 3)).round(9).to_s
  p "Input the radius of the circle: The volume of the sphere is : #{volume}."
end

# Function to create a new string from a given string where the first and last characters have been exchanged.
# Input: "Python"
# Output: nythoP
#
def exercise_15(string)
  string[0], string[-1] = string[-1], string[0]
  string
end

# Function to test whether you are minor (Consider a child unless he or she is less than 18 years old.) or not.
# Input: 17
# Output: Input your age: You are a minor
#
def exercise_16
  years_old = gets.to_i
  p 'Input your age: You are a minor' if years_old < 18
end

# Function to compute the absolute difference between n and 33 and return double the absolute difference if n is over 33.
# Input: 47
# Output: 28
#
def exercise_17
  number = gets.to_i
  number > 33 ? (number - 33).abs * 2 : (number - 33).abs
end

# Function to find the maximum of two numbers.
# Input: 1, 8
# Output: Max = 8
#
def exercise_18(number_1, number_2)
  a < b ? p("Max = #{number_2}") : p("Max = #{number_1}")
end

# Function to check two integers and return true if one of them is 20 otherwise return their sum.
# Input: 10, 10
# Output: true
#
def exercise_19(number_1, number_2)
  number_1 == 20 || number_2 == 20 || number_1 + number_2 == 20
end

# Function to find the greatest of three numbers.
# Input: 1, 2, 5
# Output: 5 is greatest.
#
def exercise_20(number_1, number_2, number_3)
  p "#{[number_1, number_2, number_3].max} is greatest."
end

# Function to check whether a number is within 10 of 100 or 200.
# Input: 95
# Output: true
#
def exercise_21(number)
  (number - 100).abs <= 10 || (number - 200).abs <= 10
end

# Function to compute the sum of the two integers, if the two values are equal return double their sum otherwise return their sum.
# Input: 5, 5
# Output: 20
#
def exercise_22(number_1, number_2)
  number_1 == number_2 ? (number_1 + number_2) * 2 : number_1 + number_2
end

# Function to print "Ruby Exercises" 9 times.
# Output: Ruby exercises * 9
#
def exercise_23
  9.times { p 'Ruby exercises' }
end

# Function to create a new string from a given string with the last character added at the front and back of the given string. The length of the given string must be 1 or more.
# Input: abc
# Output: cabcc
#
def exercise_24(string)
  string[-1] << string[0..-1] << string[-1]
end

# Function to check two temperatures and return true if one is less than 0 and the other is greater than 100.
# Input: 110, -1
# Output: true
#
def exercise_25(number_1, b)
  (a < 0 && b > 100) || (a > 100 && b < 0)
end

# Function to print 34 upto 41.
#
def exercise_26
  34.upto(41) { |x| p x }
end

# Function to print even numbers from 1 to 10.
#
def exercise_27
  2.step(10, 2) { |x| p x }
end

# Function to print odd numbers from 10 to 1.
#
def exercise_28
  9.step(1, -2) { |x| p x }
end

# Function to print the elements of a given array.
# Input: ["Ruby", 2.3, Time.now]
# Output: Ruby, 2.3, 2017-12-28 06:01:53 +0000
#
def exercise_29(array)
  array.each { |x| p x }
end

# Function to check two non-negative integer values and return true if they have the same last digit.
# Input: 11, 21
# Output: true
#
def exercise_30(number_1, number_2)
  number_1.digits[0]== number_2.digits[0]
end

# Function to retrieve the total marks where subject name and marks of a student stored in a hash.
# Input: {:a => 1, :b =>2, :c =>3, :d =>4}
# Output: 10
#
def exercise_31(hash)
  hash.reduce(0) { |sum, (key, value)| sum + value }
end

# Function to print a specified character twenty times.
# Input: *
# Output: ********************
#
def exercise_32
  char = gets.strip
  p char * 20
end

# Function to test whether a year is leap year or not.
# Input: 2012
# Output: 2012 is leap year
#
def exercise_33(year)
  year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) ? p("#{year} is leap year") : p("#{year} is not leap year")
end

# Function to check whether a string 'Java' appears at index 1 in a given sting, if 'Java' appears return the string without 'Java' otherwise return the string unchanged.
# Input: "ZJavaScript"
# Output: Script
#
def exercise_34
  string = gets.strip
  string[1..4] == 'Java' ? string[5..string.length - 1] : string
end

# Function to create a string using the first two characters (if present) of a given string if the first character is 'p' and second one is 's' otherwise return a blank string.
# Input: psabcd
# Output: ps
#
def exercise_35
  string = gets.strip
  string[0] == 'p' && string[1] == 's' ? p('ps') : p('')
end

# Function to check two integers and return whichever value is nearest to the value 10, or return 0 if two integers are equal.
# Input: 7, 14
# Output: 7
#
def exercise_36(number_1, number_2)
  return 0 if number_1 == number_2
  (number_1 - 10).abs < (number_2 - 10).abs ? number_1 : number_2
end

# Function to check two integer values and return true if they are both in the range 10..20 inclusive, or they are both in the range 20..30 inclusive.
# Input: 10, 15
# Output: true
#
def exercise_37(number_1, number_2)
  ((10..20).include?(number_1) && (10..20).include?(number_2)) || ((20..30).include?(number_1) && (20..30).include?(number_2))
end

# Function to check two positive integer values and return the larger value that is in the range 20..30 inclusive, or return 0 if no number is in that range.
# Input: 26, 29
# Output: 29
#
def exercise_38(number_1, number_2)
  return 0 unless (20..30).include?(number_1) || (20..30).include?(number_1)
  number_1 < number_2 ? number_2 : number_1
end

# Function to check a given string contains 'i' characters.
# Input: 'Diligent1'
# Output: true
#
def exercise_39(string)
  string.include?('i')
end

# Function to create a new string taking every other character starting with the first of a given string.
# Input: 'string'
# Output: srn
#
def exercise_40(string)
  result = ""
  string.length.times do |i|
    result << string[i] if i.even?
  end
  result
end

# Function to count the number of 5's in a given array.
# Input: [1, 2, 5, 9, 5]
# Output: 2
#
def exercise_41(array)
  array.count(5)
end

# Function to check whether one of the first 5 elements in a given array of integers is a 7. The array length may be less than 5.
# Input: [1, 2, 5, 7, 9]
# Output: true
#
def exercise_42(array)
  array[0..4].include?(7)
end

# Function to check whether the sequence of numbers 10, 20, 30 appears anywhere in a given array of integers.
# Input: [10, 20, 30, 40, 50]
# Output: true
#
def exercise_43(array)
  array.each_cons(3).any? { |a, b, c| a == 10 && b == 20 && c == 30 }
end

# Function  to compute and print the sum of two given integers, print 30 if the sum is in the range 20..30 (inclusive).
# Input: 22, 15
# Output: 37
#
def exercise_44(number_1, number_2)
  (20..30).include?(number_1+number_2) ? 30 : number_1 + number_2
end

# Function to check two given integers and return true if either one is 11 or their sum or difference is 11 otherwise return false.
# Input: 9, 11
# Output: true
#
def exercise_45(number_1, number_2)
  number_1 - number_2 == 11 || (number_1 + number_2 == 11) || number_1 == 11 || number_2 == 11
end

# Function to check a given non-negative number and return true if number is within 2 of a multiple of 10.
# Input: 9
# Output: true
#
def exercise_46(number)
  number % 10 <= 2 || number % 10 >= 8
end

# Function to check three given integers and return true if it is possible to add two of the integers to get the third.
# Input: 9, 12, 21
# Output: true
#
def exercise_47(number_1, number_2, number_3)
  ((number_1 + number_2) == number_3 || (number_2 + number_3) == number_1 || (number_3 + number_1) == number_2)
end

# Function to check three given integers and return true if two or more of them have the same rightmost digit.
# Input: 9, 12, 22
# Output: true
#
def exercise_48(number_1, number_2, number_3)
  number_1.digits[0] == number_2.digits[0] || number_1.digits[0] == number_3.digits[0] || number_3.digits[0] == number_2.digits[0]
end

# Function to check three given integers and return true if one of them is 20 or more less than one of the others.
# Input: 9, 12, 22
# Output: false
#
def exercise_49(number_1, number_2, number_3)
  (number_1 - number_2).abs >= 20 || (number_1 - number_3).abs >= 20 || (number_2 - number_3).abs >= 20
end

# Function to check two given integers and return the larger value. However if the two values have the same remainder when divided by 5 then return the smaller value and if the two values are the same, return 0.
# Input: 110, 200
# Output: 110
#
def exercise_50(number_1, number_2)
  return 0 if number_1 == number_2
  number_1 < number_2 && number_1 % 5 == number_2 % 5 ? number_1 : number_2
end

# Function to check two given integers, each in the range 10..99, return true if there is a digit that appears in both numbers.
# Input: 15, 51
# Output: true
#
def exercise_51(number_1, number_2)
  return false unless (10..99).include?(number_1) && (10..99).include?(number_2)
  number_1.digits.each { |x| return true if number_2.digits.include?(x) }
end

# Function to check three given integers and return their sum. However, If one of the values is the same as another of the values, it does not count towards the sum.
# Input: 5, 5, 5
# Output: 0
#
def exercise_52(number_1, number_2, number_3)
  return 0 if number_1 == number_2 && number_2 == number_3
  [number_1, number_2, number_3].uniq.size == 2 ? [number_1, number_2, number_3].uniq.sum : number_1 + number_2 + number_3
end

# Function to check three given integers and compute their sum. However, if one of the values is 17 then it does not count towards the sum and values to its right do not count.
# Input: 5, 5, 17
# Output: 10
#
def exercise_53(number_1, number_2, number_3)
  [number_1, number_2, number_3].reduce(0) { |sum, value| value == 17 ? sum : sum + value }
end

# Function  to check three given integers x, y, z and return true if one of y or z is close (differing from a by at most 1), while the other is far, differing from both other values by 3 or more.
# Input: 2, 3, 11
# Output: true
#
def exercise_54(number_1, number_2, number_3)
  (number_2 - number_1).abs <= 1 && (number_3 - number_1).abs >= 3 || (number_3 - number_1).abs <= 1 && (number_2 - number_1).abs >= 3
end

# Function to check three given integers (one of them is small, one is medium and one is large) and return true if the three values are evenly spaced, so the difference between small and medium is the same as the difference between medium and large.
# Input: 5, 10, 15
# Output: true
#
def exercise_55(number_1, number_2, number_3)
  arr = [number_1, number_2, number_3].sort
  (arr[0] - arr[1]).abs == (arr[1] - arr[2]).abs
end

