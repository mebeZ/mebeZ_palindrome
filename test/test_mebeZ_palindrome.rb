# frozen_string_literal: true

require "test_helper"

class TestMebeZPalindrome < Minitest::Test
  def test_non_palindrome?
    refute "apple".palindrome?
  end
  
  def test_palindrome?
    assert "racecar".palindrome?
  end
  
  def test_palindrome_mixed_case?
    assert "RaceCar".palindrome?
  end
  
  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_not_palindrome?
    refute 1325.palindrome?
  end
  
  def test_integer_palindrome
    assert 131.palindrome?
  end
end

