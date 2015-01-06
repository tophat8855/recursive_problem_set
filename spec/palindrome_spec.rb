require 'spec_helper'
require_relative '../lib/palindrome'

describe Palindrome do
  describe 'when we give it an empty string' do
    it 'returns true' do
      result = Palindrome.recursive_palindrome?("")

      expect(result).to eq(true)
    end
  end

  describe 'when we give it a single character' do
    it 'returns true' do
      result = Palindrome.recursive_palindrome?('a')

      expect(result).to eq(true)
    end
  end

  describe 'when we give it 2 characters' do
    it 'returns false when the chars are different' do
      result = Palindrome.recursive_palindrome?('ab')

      expect(result).to eq(false)
    end

    it 'returns true when the chars are the same' do
      result = Palindrome.recursive_palindrome?('aa')

      expect(result).to eq(true)
    end
  end

  describe 'when we give it more' do
    it 'returns true when it is a palindrome' do
      result = Palindrome.recursive_palindrome?('obo')

      expect(result).to eq(true)
    end

    it 'returns false when it is a palindrome' do
      result = Palindrome.recursive_palindrome?('abca')

      expect(result).to eq(false)
    end

    it 'returns true with a longer palindrome' do
      result = Palindrome.recursive_palindrome?('racecar')

      expect(result).to eq(true)
    end
  end

  it 'works with whitespace' do
    string = 'a man a plan a canal panama'
    result = Palindrome.recursive_palindrome?(string)

    expect(result).to eq(true)
  end
end
