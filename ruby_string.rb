# Function to draw a string as bold or italic text.
# Input: "i", "Ruby"
# Output: <i> Ruby </i>
#
def exercise_1(tag, word)
  "<#{tag}> #{word} </#{tag}>"
end

# Function to insert a string of length 2 to an another string where the first string will be in the middle of the second string.
# Input: "Pyon", "th"
# Output: Python
#
def exercise_2(string_1, string_2)
  string_1.insert((string_1.length / 2.0).floor, string_2)
end

# Function to lower case, upper case and capitalizes all the words of a given string.
# Input: "ruby exercises!"
# Output: RUBY EXERCISES!, ruby exercises!, Ruby exercises!
#
def exercise_3(string)
  p(string.upcase)
  p(string.downcase)
  p(string.capitalize)
end

# Function to check whether a string contains a substring.
# Input: "JavaScript","Script"
# Output: true
#
def exercise_4(string, substring)
  string.include?(substring)
end

# Function to remove all white space within a string.
# Input: "Ja v aS cr     ip      t"
# Output: JavaScript
#
def exercise_5(string)
  string.delete(' ')
end

# Function to remove last specified characters from a given string.
# Input: "JavaScript", 2
# Output: JavaScri
#
def exercise_6(string, number)
  p string[0..string.length - (1 + number)]
end

# Function to split a delimited string and convert it to an array.
# Input: "A,B,C,D,E,F", ","
# Output: ["A", "B", "C", "D", "E", "F"]
#
def exercise_7(string, delimiter)
  p string.split(delimiter)
end

# Function to remove a substring from a specified string.
# Input: "JavaScript", "Script"
# Output: Java
#
def exercise_8(string_1, string_2)
  string_1.slice!(string_2)
  string_1
end

# Function to check whether a string starts with an other string.
# Input: "JavaScript", "Java"
# Output: true
#
def exercise_9(string_1, string_2)
  string_1.start_with?(string_2)
end

# Function to count the occurrences of a specified character in a given string.
# Input: "JavaScript", "a"
# Output: 2
#
def exercise_10(string, character)
  string.count(character)
end

# Function to sort a string's characters alphabetically.
# Input: "javascript"
# Output: aacijprstv
#
def exercise_11(string)
  string.chars.sort.join
end

# Function to remove a specified character into a given string
# Input: "JavaScript", 'a'
# Output: JvScript
#
def exercise_12(string, character)
  string.delete(character)
end

# Function to trim specific characters from a string.
# Input: "JavaScript", 'JS'
# Output: avacript
#
def exercise_13(string, character)
  string.delete(character)
end

# Function to remove the first and last two characters from a specified string.
# Input: "JavaScript"
# Output: vaScri
#
def exercise_14(string)
  string[2..-3]
end

# Function to get a substring from a specified position to the last char of a given string.
# Input: "JavaScript", 5
# Output: crip
#
def exercise_15(string, number)
  string.slice!(number...-1)
end

# Function to get the number of lines in a given string.
# Input: "pham \n van \n chien \n"
# Output: 3
#
def exercise_16(text)
  text.lines.size
end

# Function to truncate a given string to the first n words.
# Input: 'Python is a  widely used   high-level, general-purpose', 3
# Output: Python is a
#
def exercise_17(string, number)
  p string.split(' ')[0...number].join(' ')
end

# Function to remove a character from a given string if it starts with that specified character.
# Input: "JJavaScript"
# Output: JavaScript
#
def exercise_18(string_1, string_2)
  string_1.start_with?(string_2) ? string_1[string_2.length..-1] : string_1
end