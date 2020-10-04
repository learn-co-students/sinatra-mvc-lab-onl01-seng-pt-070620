class PigLatinizer

    # def initialize(input_string)
    #     input_string=input_string
    # end
       
    def piglatinize(input_string)
        @vowels = ["a","e","i","o","u"]
         @consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
        # binding.pry
        final_string = []
        words = input_string.split(' ')
        words.each do |word|
            if word.length < 2
                final_string << word + "way"
            elsif @vowels.include?(word.downcase[0])
                final_string << word + "way"
            elsif @consonants.include?(word.downcase[0]) && @consonants.include?(word[1]) && @consonants.include?(word[2])
                final_string << word[3..-1] + word[0..2] + 'ay'
            elsif @consonants.include?(word.downcase[0]) && @consonants.include?(word[1])
                final_string << word[2..-1] + word[0..1] + 'ay'
            elsif @consonants.include?(word.downcase[0])
                # binding.pry
                final_string << word[1..-1] + word[0] + 'ay'
            else
                # binding.pry
                final_string << word + "way"
            end
        end
        final_string.join(', ').gsub(/,/, '')
    end
    
end