# frozen_string_literal: true

require_relative "mebeZ_palindrome/version"

class String
  
  def palindrome?
    processed_content == processed_content.reverse
  end
  
  private
  
    def processed_content
      return scan(/[a-zA-Z]/).join.downcase
    end

end