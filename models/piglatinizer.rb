require 'pry'

class PigLatinizer
        #  "noodle soup" becomes "oodlenay oupsay"
        # "flatiron school" becomes "atironflay oolschay"
        # "big apple" becomes "igbay appleway" (note the added "w" in "appleway")

    def piglatinize(sentense)
       words = sentense.split(" ")
       pig_latin_words = words.map {|word| piglatinize_word(word)}
       pig_latin_words.join(" ")
    end

    def piglatinize_word(word)
        if word.start_with?('a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U')
            word << "way"
        else
            first_consonants = word[/\A[^aeiouAEIOU]*/]
            word.gsub(/\A[^aeiouAEIOU]*/, '') << first_consonants << "ay"
        end
    end

end

