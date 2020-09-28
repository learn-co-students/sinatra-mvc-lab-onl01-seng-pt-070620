class PigLatinizer

    # attr_reader :text

    # def initialize
    #     @text = text
    # end 

    # def piglatinize(thing)
    #     pig(thing)
    #   end

    def piglatinize(thing)
        alpha = ('a'..'z').to_a + ('A'..'Z').to_a
        vowels = %w[a e i o u] + %w[A E I O U]
        consonants = alpha - vowels
      
        showme = []
          input = thing.split(' ') 
            input.each do |word|
                if word.length < 2
                   showme << word + "way" 
                elsif vowels.include?(word[0])
                   showme <<  word + "way"
                elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
                   showme <<  word[3..-1] + word[0..2] + 'ay'
                elsif consonants.include?(word[0]) && consonants.include?(word[1])
                   showme <<  word[2..-1] + word[0..1] + 'ay'
                elsif consonants.include?(word[0])
                   showme <<  word[1..-1] + word[0] + 'ay'
                else 
                   showme <<  word + '?'
                end
            end 
        showme.join(', ').gsub(/,/, '')
      end

      # solution 2 did not work
    # def piglatinize(sentence)
    #     sentence.split(" ").map do |word|
    #         word = word.gsub("qu", " ")
    #         word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
    #         word = word.gsub(" ", "qu")
    #       end.join()
    # end 
end 