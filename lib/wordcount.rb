class String
  define_method(:wordcount) do |word_input|

    #Make all the sentence components lowercase
    string_input = self.downcase()

    #Split sentence in components
    string_input = string_input.split()


    #Make the inpout word lowercase
    word_input=self.downcase()

    #count the occurence of the word in the sentence
    word_freq=0
    string_input.each() do |word|
      if word.eql?(word_input) == true
         word_freq = word_freq.+(1)
      end
    end
    word_freq
   end
end
