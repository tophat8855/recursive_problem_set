class Palindrome
  def self.recursive_palindrome?(string)
    string.gsub!(' ', '')
    if string.length == 1 || string == ""
      true
    elsif string[0] == string[-1]
      recursive_palindrome?(string[1..-2])
    else
      false
    end
  end

  def iterative_palindrome?(string)
    string == string.reverse
  end
end
