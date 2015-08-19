class String
  define_method(:wordcount) do |word_input|

    #Make all the sentence components lowercase
    string_input = downcase()

    #Split sentence in components
    string_input = string_input.split()

    #Make the inpout word lowercase
    word_input = word_input.downcase()

    #count the occurence of the word in the sentence
    word_freq = 0
    string_input.each() do |word|
      if word.eql?(word_input)
         word_freq = word_freq.+(1)
      end
    end
    word_freq
   end
end
