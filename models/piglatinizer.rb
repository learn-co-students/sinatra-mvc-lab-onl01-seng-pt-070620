class PigLatinizer

    def piglatinize(string) 
        word = string.split(" ")
        word.map {|text| piglatinize_word(text)}.join(" ")
    end 

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index-1)
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonants + "ay"
        end
    end     

    def vowel?(letter)
        letter.match(/[aAeEiIoOuU]/)
    end








end 