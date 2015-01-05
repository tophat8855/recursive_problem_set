# Iteratively

def iterative_bottles_of_beer(n)
  while n > 0
    if n == 1
      puts "#{n} bottle of beer on the wall! #{n} of beer!"
    else
      puts "#{n} bottles of beer on the wall! #{n} of beer!"
    end
    puts "Take one down, pass it around, #{n - 1} bottles of beer on the wall!"
    n -= 1
  end
end

puts iterative_bottles_of_beer(5)

# Recursively

def recursive_bottles_of_beer(n)
  if n == 1
    puts "1 bottle of beer on the wall, 1 bottle of beer!"
    puts "Take one down, pass it around, 0 bottles of beer on the wall"
  else
    puts "#{n} bottles of beer on the wall! #{n} bottles of beer!"
    puts "Take one down, pass it around, #{n - 1} bottles of beer on the wall!"
    recursive_bottles_of_beer(n - 1)
  end
end

puts recursive_bottles_of_beer(10)
