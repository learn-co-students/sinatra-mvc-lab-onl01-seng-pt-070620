class PigLatinizer

    def piglatinize(string)
        string.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
    end


    def find_vowel?(char)
        char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        if find_vowel?(word[0])
            word + "way"
        # if word begins with consonant, send consonant combo to end of word and add ay
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index-1)
            remaining_word = word.slice(vowel_index..word.length)
            remaining_word + consonants + "ay"
        end
    end
end