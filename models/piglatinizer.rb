require 'pry'
class PigLatinizer
    
    def piglatinize(string)
        letter_array = string.split(" ")
        pig_array = letter_array.map {|word| piglatinize_word(word)}
        pig_array.join(" ")
    end

    def piglatinize_word(word)
        first_letter = word[0].downcase

        if ["a", "e", "i", "o", "u"].include?(first_letter)
            "#{word}way"
        else
            c = []
            c << word[0]

                if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                    c << word[1]
                    if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                        c << word[2]
                    end
                end
            "#{word[c.length..-1] + c.join + "ay"}"
        end
    end
end