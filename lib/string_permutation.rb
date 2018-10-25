require 'set'
class StringPermutation
  def valid?(str1, str2)
    return false unless str1.length == str2.length
    char_hash_str1 = character_hash(str1)
    char_hash_str2 = character_hash(str2)
    char_hash_str1 == char_hash_str2
  end

  private

  def character_hash(string)
    string_array = string.split("")
    string_array.inject(Hash.new(0)) do |memo, character|
      memo[character] += 1
      memo
    end
  end
end
