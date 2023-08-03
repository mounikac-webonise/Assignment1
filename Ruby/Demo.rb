
# 1.Compute the sum of cubes for a given range a through b. Write a method called sum_of_cubes to accomplish this task. Example Given range 1 to 3 the method should return 36.

def sum_of_cubes(a, b)
  sum = 0

  (a..b).each do |num|
    sum += num ** 3
  end

  return sum
end
result = sum_of_cubes(1, 3)
puts result 

#2.Given an Array, return the elements that are present exactly once in the array. You need to write a method called non_duplicated_values to accomplish this task. Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]

def non_duplicate_values(array)
  array.select { |item| array.count(item) == 1 }
end

input_array = [1, 2, 2, 3, 3, 4, 5]
result = non_duplicate_values(input_array)

puts "Non-duplicate values: #{result}"

# 3.Given a sentence, return true if the sentence is a palindrome. You are supposed to write a method palindrome? to accomplish this task. 

def palindrome?(sentence)
  normalized_sentence = sentence.downcase.gsub(/\s+/, "")
  normalized_sentence == normalized_sentence.reverse
end

input_sentence = "Never odd or even"
result = palindrome?(input_sentence)

puts result

#4.9 is a Kaprekar number since 9 ^ 2 = 81 and 8 + 1 = 9, 297 is also Kaprekar number since 297 ^ 2 = 88209 and 88 + 209 = 297. In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. Find if a given number is a Kaprekar number.

def kaprekar_number?(num)
  squared = num**2
  squared_str = squared.to_s
  (1..squared_str.length - 1).each do |split_point|
    left_part = squared_str[0, split_point]
    right_part = squared_str[split_point..-1]

    left_sum = left_part.to_i
    right_sum = right_part.to_i
    return true if num == left_sum + right_sum
  end
  return false
end

puts kaprekar_number?(9)  
puts kaprekar_number?(297) 

#6.Dates
# Print current date.
# Print 12th Jan 2012
# Add 7 days in current date
# Compare two dates. (12-04-2010 & 12-05-2011). Calculate the days between these two dates.
# Print date after 20 days from current date
# Print date in array format.

require 'date'
current_date = Date.today
puts "Current Date: #{current_date}"

date_12th_jan_2012 = Date.parse("2012-01-12")
puts "12th Jan 2012: #{date_12th_jan_2012}"

seven_days_from_today = current_date + 7
puts "Date after adding 7 days: #{seven_days_from_today}"

date1 = Date.parse("2010-04-12")
date2 = Date.parse("2011-05-12")
days_difference = (date2 - date1).to_i
puts "Days between #{date1} and #{date2}: #{days_difference}"

date_after_20_days = current_date + 20
puts "Date after 20 days from current date: #{date_after_20_days}"

date_in_array_format = [current_date.year, current_date.month, current_date.day]
puts "Date in array format: #{date_in_array_format}"

#7.Print prime numbers from the given array
def is_prime?(number)
  return false if number <= 1

  (2..Math.sqrt(number)).each do |i|
    return false if number % i == 0
  end

  true
end

def print_prime_numbers(array)
  prime_numbers = array.select { |num| is_prime?(num) }

  if prime_numbers.empty?
    puts "No prime numbers found in the array."
  else
    puts "Prime numbers in the array: #{prime_numbers.join(', ')}"
  end
end
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print_prime_numbers(numbers_array)


#8.Write a program for fuel indication.
#Ex: 0 -> Out of fuel, 1-10 -> Low, Please fill, 11-30 -> Good for now, 31-50 -> Almost Full, > 50 -> Full
def fuel_indication(fuel_level)
  case fuel_level
  when 0
    puts "Out of fuel"
  when 1..10
    puts "Low, Please fill"
  when 11..30
    puts "Good for now"
  when 31..50
    puts "Almost Full"
  else
    puts "Full"
  end
end
fuel_level = 25
fuel_indication(fuel_level)

#9.Swap the given values(without the third variable)
def swap_values(a, b)
  a = a + b
  b = a - b
  a = a - b
  return a, b
end
x = 5
y = 10
x, y = swap_values(x, y)
puts "Swapped values: x = #{x}, y = #{y}"

# 10.Program to Randomly Select an Element From the Array
def random_element(array)
  return array.sample
end

fruits = ["apple", "banana", "orange", "grape", "mango"]
random_fruit = random_element(fruits)
puts "Randomly selected fruit: #{random_fruit}"

#11.Program to Count the Number of Each Vowel
def count_vowels(sentence)
  vowels = "aeiouAEIOU"
  vowel_count = Hash.new(0)

  sentence.each_char do |char|
    if vowels.include?(char)
      vowel_count[char] += 1
    end
  end

  vowel_count
end
input_sentence = "Hello world"
result = count_vowels(input_sentence)
puts result


#12.Program to Sort a Hash by Value
def sort_hash_by_value(hash)
  sorted_hash = hash.sort_by { |key, value| value }
  Hash[sorted_hash]
end

input_hash = { "apple" => 3, "banana" => 1, "orange" => 2 }
sorted_hash = sort_hash_by_value(input_hash)
puts sorted_hash

# 13.Program to Convert Two Arrays Into a Hash
def arrays_to_hash(keys, values)
  hash = Hash[keys.zip(values)]
end

keys_array = ["name", "age", "city"]
values_array = ["John", 30, "New York"]
result_hash = arrays_to_hash(keys_array, values_array)
puts result_hash

