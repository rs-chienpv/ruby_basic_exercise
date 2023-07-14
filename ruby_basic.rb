def exercise_1
  p 'Ruby Version: ' << RUBY_VERSION
  p 'Ruby Patch Level: ' << RUBY_PATCHLEVEL.to_s
end

def exercise_2
  require 'date'
  current_time = DateTime.now.strftime('%d/%m/%Y %H:%M')
  p "Current Date and Time: #{current_time}"
end

def exercise_3(string, number)
  p string * number
end

def exercise_4
  radius = gets.to_f
  perimeter = (radius * Math::PI * 2).round(8).to_s
  area = (radius**2 * Math::PI).round(8).to_s
  p "Input the radius of the circle: The perimeter is #{perimeter}."
  p "The area is #{area}."
end

def exercise_5
  string = gets.strip
  p string.start_with?('if')
end

def exercise_6
  p 'Input your first name: '
  first_name = gets.strip
  p 'Input your last name: '
  last_name = gets.strip
  p "Hello #{last_name} #{first_name}"
end

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

def exercise_8
  p 'Input your first name: '
  first_name = gets.strip
  p 'Input your last name: '
  last_name = gets.strip
  p "Hello #{last_name} #{first_name}"
end

def exercise_9(a, b, c)
  array_check = [a, b, c]
  p(array_check.any? { |x| (1..10).include? x })
end

def exercise_10(a, b, c)
  array_check = [a, b, c]
  p(array_check.one? { |x| (1..10).include? x })
end

def exercise_11
  p here_documet = <<~END_TEXT
    Sample string :
    a string that you "don't" have to escape
    This
    is a ....... multi-line
    heredoc string --------> example
  END_TEXT
end

def exercise_12
  string = gets.strip
  string.start_with?('if') ? p(string) : p(string.prepend('if '))
end

def exercise_13(string, number)
  string.length < 3 ? p(string * number) : p(string[0..2] * number)
end

def exercise_14
  radius = gets.to_f
  volume = ((radius**3) * Math::PI * (4 / 3)).round(9).to_s
  p "Input the radius of the circle: The volume of the sphere is : #{volume}."
end

def exercise_15(string)
  current = string[0]
  string[0] = string[string.length - 1]
  string[string.length - 1] = current
  p string
end

def exercise_16
  years_old = gets.to_i
  p 'Input your age: You are a minor' if years_old < 18
end

def exercise_17
  number = gets.to_i
  number > 33 ? p((number - 33).abs * 2) : p((number - 33).abs)
end

def exercise_18(a, b)
  a < b ? p("Max #{b}") : p("Max = #{a}")
end

def exercise_19(a, b)
  a == 20 || b == 20 || a + b == 20
end

def exercise_20(a, b, c)
  p "#{[a, b, c].max} is greatest."
end

def exercise_21(a)
  (a - 100).abs <= 10 || (a - 200).abs <= 10
end

def exercise_22(a, b)
  a == b ? p((a + b) * 2) : p(a + b)
end

def exercise_23
  9.times { p 'Ruby exercises' }
end

def exercise_24(string)
  p string[-1] << string[0..-1] << string[-1]
end

def exercise_25(a, b)
  (a < 0 && b > 100) || (a > 100 && b < 0)
end

def exercise_26
  34.upto(41) { |x| p x }
end

def exercise_27
  2.step(10, 2) { |x| p x }
end

def exercise_28
  9.step(1, -2) { |x| p x }
end

def exercise_29(array)
  array.each { |x| p x }
end

def exercise_30(a, b)
  a % 10 == b % 10
end

def exercise_31(hash)
  p hash.reduce(0) { |sum, (_key, value)| sum + value }
end

def exercise_32
  char = gets.strip
  p char * 20
end

def exercise_33
  year = gets.strip.to_i
  year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
end

def exercise_34
  string = gets.strip
  string[1..4] == 'Java' ? p(string[5..string.length - 1]) : p(string)
end

def exercise_35
  string = gets.strip
  string[0] == 'p' && string[1] == 's' ? p('ps') : p('')
end

def exercise_36(a, b)
  if a == b
    p(0)
  else
    (a - 10).abs < (b - 10).abs ? p(a) : p(b)
  end
end

def exercise_37(a, b)
  ((10..20).include?(a) && (10..20).include?(b)) || ((20..30).include?(a) && (20..30).include?(b))
end

def exercise_38(a, b)
  return 0 unless (20..30).include?(a) || (20..30).include?(b)

  a < b ? (return b) : (return a)
end

def exercise_39(string)
  string.include?('i')
end

def exercise_40(a, b)
  a.digits[0] == b.digits[0]
end

def exercise_41(array)
  array.count { |number| number == 5 }
end

def exercise_42(array)
  array[0..4].include?(7)
end

def exercise_43(array)
  array.each_cons(3) { |a, b, c| return true if a == 10 && b == 20 && c == 30 }
  false
end

def exercise_44(a, b)
  a.digits[0] == b.digits[0]
end

def exercise_45(a, b)
  a - b == 11 || (a + b == 11) || a == 11 || b == 11
end

def exercise_46(number)
  number % 10 <= 2 || number % 10 >= 8
end

def exercise_47(a, b, c)
  ((a + b) == c || (b + c) == a || (c + a) == b)
end

def exercise_48(a, b, c)
  a.digits[0] == b.digits[0] || a.digits[0] == c.digits[0] || c.digits[0] == b.digits[0]
end

def exercise_49(a, b, c)
  (a - b).abs >= 20 || (a - c).abs >= 20 || (b - c).abs >= 20
end

def exercise_50(a, b)
  if a != b
    a < b && a % 5 == b % 5 ? (return a) : (return b)
  end
  0
end

def exercise_51(a, b)
  if (10..99).include?(a) && (10..99).include?(b)
    a.digits.each { |x| return true if b.digits.include?(x) }
  end
  false
end

def exercise_52(a, b, c)
  if a == b && b == c
    0
  elsif a == b
    c
  elsif a == c
    b
  elsif b == c
    a
  else
    a + b + c
  end
end

def exercise_53(a, b, c)
  [a, b, c].reduce(0) { |sum, value| value == 17 ? (return sum) : sum + value }
end

def exercise_54(a, b, c)
  (b - a).abs <= 1 && (c - a).abs >= 3 || (c - a).abs <= 1 && (b - a).abs >= 3 ? (return true) : (return false)
end

def exercise_55(a, b, c)
  arr = [a, b, c].sort
  (arr[0] - arr[1]).abs == (arr[1] - arr[2]).abs ? (return true) : (return false)
end
