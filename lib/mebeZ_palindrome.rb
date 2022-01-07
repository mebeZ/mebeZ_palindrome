# frozen_string_literal: true

require_relative "mebeZ_palindrome/version"

module MebeZPalindrome
  def palindrome?
    processed_content == processed_content.reverse
  end
  
  private
  
    def processed_content
      return self.to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String
  include MebeZPalindrome
end

class Integer
  include MebeZPalindrome
end