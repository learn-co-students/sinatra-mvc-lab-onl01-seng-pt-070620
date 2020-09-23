class PigLatinizer
    def piglatinize(word_or_phrase) 
        vowels = ["a", "e", "i", "o", "u"]
        piglatinized_words = []
        word_or_phrase.split(" ").each do |letter|
            
            # if first letter is a vowel..
            if vowels.include?(letter.downcase.split("").first)
                letter = letter + "way"
                piglatinized_words << letter
                # binding.pry
            else
                letter = letter.split("")
                temp = letter.first
                letter.shift
                # binding.pry

                if vowels.include?(letter.first)
                    letter = letter.push(temp).join + "ay"
                    piglatinized_words << letter
                    # binding.pry
                else
                    letter << temp
                    # binding.pry
                    temp = letter.first
                    letter.shift
                    letter << temp
                    if vowels.include?(letter.first)
                        letter = letter.join + "ay"
                        piglatinized_words << letter
                    else
                        temp = letter.first
                        letter.shift
                        letter << temp
                        if vowels.include?(letter.first)
                            # binding.pry
                            letter = letter.join + "ay"
                            piglatinized_words << letter
                        # else
                            # binding.pry
                        #     temp = letter.first
                        #     letter.shift
                        #     letter << temp
                        end                        
                    end
                end
            end
        end
        piglatinized_words.join(" ")
    end
end