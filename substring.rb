# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit how how]

def substring(string, dict)
  dict.reduce(Hash.new(0)) do |result, word|
    result[word] += 1 if string.downcase.include?(word.downcase)
    result
  end
end
p substring('Howdy partner, sit down! Hows it going?', dictionary)
