def iterative_fibonacci(n)
  first_fibonacci = 0
  next_fibonacci = 1
  (n).times {next_fibonacci, first_fibonacci = first_fibonacci + next_fibonacci, next_fibonacci}
  first_fibonacci
end

puts iterative_fibonacci(6)

def recursive_fibonacci(n)
  if n <= 1
    n
  else
    recursive_fibonacci(n-1) + recursive_fibonacci(n-2)
  end
end

puts recursive_fibonacci(6)
