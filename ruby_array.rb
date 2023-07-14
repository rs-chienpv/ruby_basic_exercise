def exercise_1(array, number)
  array.each { |item| return true if item == number }
  return false
end

def exercise_2(array)
  if !array.empty?
    array[0] == 7 || array[-1] == 7
  else
    return false
  end
end

def exercise_3(array, number)
  p array.sample(number)
end

def exercise_4(array)
  if !array.empty?
    array[0] == array[-1] 
  else
    return false
  end
end
def exercise_5(array)
  p array.reduce(0){ |sum, value| sum + value }
end

def exercise_6(array)
  p array.uniq
end

def exercise_7(array1, array2)
  if array1.empty? && array2.empty?
    array1[0] == array2[0] || array1[-1] == array2[-1]
  else
    return false
  end
end

def exercise_8(array)
  array.delete('')
  p array
end

def exercise_9(array)
  if array.size >= 3
    p array.reduce(0){ |sum, value| sum + value }
  end
  return 0
end

def exercise_10(string)
  str_arr, num_arr = string.split(",").map(&:strip).partition { |e| e.match?(/\D/) }
  num_arr = num_arr.map(&:to_i)
  puts str_arr.inspect
  puts num_arr.inspect
end

def exercise_11(array)
  p array.rotate(-2)
end

def exercise_12(array)
  p array.reverse
end

def exercise_13(array)
  p Array.new(array.size, array.max)
end

def exercise_14(array)
  if !array.empty?
    array.size >= 2 ? (return(array[0] + array[1])) : (return(array[0]))
  else
    return 0
  end
end

def exercise_15(array1, array2)
  p array1 & array2
end

def exercise_16(array)
  p array.flatten
end

def exercise_17(array)
  p array.include?(4) || array.include?(7)
end

def exercise_18(array)
  p array.include?(6) || array.include?(9)
end

def exercise_19(array)
  if array.size == 2
    array[0] == 3 && array[1] == 3 || array[1] == 5 && array[0] == 5 ? (return true) : (return false)
  else
    return false
  end
end

def exercise_20(array)
  if array.index(3)
    array[array.index(3) + 1] == 5 ? array[array.index(3) + 1] = 1 : array
    return array
  else
    return array
  end
end

def exercise_21(array1, array2)
  array2.reduce(0){ |sum1, value| sum1 + value} < array1.reduce(0){ |sum, value| sum + value} ? p(array1) : p(array2)
end

def exercise_22(array)
  p array[array.size/2 - 1..array.size/2]
end

def exercise_23(array1, array2)
 p array1 + array2
end

def exercise_24(array)
  array[0], array[-1] = array[-1], array[0]
  p array
end

def exercise_25(array)
  array.size > 3 && array.size.odd? ? (return array[array.size/2 - 1..array.size/2 + 1]) : (return array)
end

def exercise_26(array)
  !array.empty? && array.size.odd? ? (return array.max) : (return array)
end

def exercise_27(array)
  array.size >= 3 ? (return array[0..2]) : (return array)
end

def exercise_28(array1, array2)
  p [array1[0], array2[0]].compact
end

def exercise_29(array)
  p array.count { |i| i.even?}
end

def exercise_30
  p (array.minmax[0] - array.minmax[1]).abs
end

def exercise_31(array)
  array.sort!.delete_at(0)
  array.delete_at(-1)
  p array.reduce(0){ |sum, value| sum + value} / array.size.to_f
end

def exercise_32(array)
  array[0...array.index(17)].reduce(0){ |sum, value| sum + value }
end

def exercise_33(array)
  array.reduce(0){ |sum, value| value == 3 ? sum + value : sum } == 9 
end

def exercise_34(array)
  array.count(2) > array.count(5)
end

def exercise_35(array)
  !(array.select{|value| value != 3 && value != 5}.size > 0)
end

def exercise_36(array)
  array.include?(3) ^ array.include?(5)
end

def exercise_37(array, number)
  array.each_cons(2){ |a, b| return true if (a == b && b == number)}
  return false
end

def exercise_38(array)
  has_33 = false
  has_55 = false
  array.each_cons(2) do |a, b|
    if a == 3 && b == 3
      has_33 = true
    elsif a == 5 && b == 5
      has_55 = true
    end
  end
  has_33 == true && has_55 == true ? (return false) : (return (has_33 || has_55))
end

def exercise_39(array)
  array.each_cons(3){ |a, b, c| return true if a == b || a == c}
  return false
end

def exercise_40(array)
  array.include?(2) ? array[array.index(2)..-1].include?(3) : (return false)
end

def exercise_41(array)
  array.each_cons(2){ |a, b| return false if (a == b && b == 2)}
  array.count(2) == 2
end

def exercise_42(array)
  hash = {}
  array.each_with_index { |val, idx| hash[val] = nil}
  p hash
end

def exercise_43(array)
  hash = {}
  array.each_with_index { |val, idx| hash[val] = inedx}
  p hash
end

def exercise_44(array)
  array.all?(array[0])
end

def exercise_45(array)
  while array.size > 0 do
    string = gets.strip
    p array.select { |item| item.start_with?(string)}
  end
end

def exercise_46(array)
  array.reverse.each{ |item| p item }
end

def exercise_47(array)
  p array.first(3)
end

def exercise_48(array)
  p array.sort_by {|item| item.length}
end