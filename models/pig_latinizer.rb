class PigLatinizer


    def piglatinize(word)
        
        first_letter = word[0].downcase
        if ["a", "e", "i", "o", "u"].include?(first_letter)
            return "#{word}way"
        else
        consonants = []
        consonants << word[0]
            if ["a", "e", "i", "o", "u"].include?(word[1]) == false
        consonants << word[1]
            if ["a", "e", "i", "o", "u"].include?(word[2]) == false
        consonants << word[2]
        end
      end
    end
    "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end

  def piglatinize_string(string)
    binding.pry
    a = string.split(" ")
    b = a.map {|word| piglatinize(word)}
    b.join(" ")
  end


end