class PigLatinizer
  attr_accessor :words
  def initialize

  end

  def piglatinize(words)
    translated = []
    wordsarr = words.split(' ')
    wordsarr.collect do |word|
      if word.start_with?('a','e','i','o','u','A','E','I','O','U')
        word = word + 'way'
        translated << word
      else
        letters = word.split('')
        until letters.join().start_with?('a','e','i','o','u','A','E','I','O','U')
          letters.push(letters.shift)
        end
        translated << letters.join() + "ay"
      end
    end
    translated.join(" ")
  end

end