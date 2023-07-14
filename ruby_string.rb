def exercise_1(tag, word)
  "<#{tag}> #{word} </#{tag}>"
end

def exercise_2(string1, string2)
  string1.insert((string1.length / 2.0).floor, string2)
end

def exercise_3
  string = gets.strip
  p(string.upcase)
  p(string.downcase)
  p(string.capitalize)
end

def exercise_4(array)
  return array[0] == array[-1] if array.size > 1

  false
end

def exercise_5(string)
  p string.delete(' ')
end

def exercise_6(number, string)
  p string[0..string.length - (1 + number)]
end

def exercise_7(string, delimiter)
  p string.split(delimiter)
end

def exercise_8(string1, string2)
  string1.slice!(string2)
  p string1
end

def exercise_9(string1, string2)
  string1.start_with?(string2)
end

def exercise_10(string, character)
  p string.count(character)
end

def exercise_11(string)
  p string.chars.sort.join
end

def exercise_12(array)
  p array.reverse
end

def exercise_13(string, character)
  p string.delete(character)
end

def exercise_14(string)
  p string[2..-3]
end

def exercise_15(string, number)
    p string.slice!(number...-1)
end

def exercise_16(text)
  p text.lines.size
end

def exercise_17(string, number)
  p string.split(' ')[0...number].join(' ')
end

def exercise_18(string1, string2)
  string1.start_with?(string2) ? p(string1[string2.length..-1]) : p(string1)
end