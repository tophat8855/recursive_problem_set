def iterative_palindrome?(string)
  string == string.reverse
end

puts iterative_palindrome?("race")
puts iterative_palindrome?("racecar")

def recursive_palindrome?(string)
  if string.length == 1 || string.length == 0
    true
  elsif string[0] == string[-1]
    recursive_palindrome?(string[1..-2])
  else
    false
  end
end

puts recursive_palindrome?("a")

puts recursive_palindrome?("han")
puts recursive_palindrome?("hannah")
