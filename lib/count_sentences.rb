require 'pry'

class String

  def sentence?
    return true if self.end_with?(".")
    false
  end

  def question?
    return true if self.end_with?("?")
    false
  end

  def exclamation?
    return true if self.end_with?("!")
    false
  end

  def count_sentences
    string_array = self.split
    count = 0 
    i = 0
    while i < string_array.length 
      count += 1 if (string_array[i].sentence? || string_array[i].question? || string_array[i].exclamation?)
      i += 1
    end
    
    count
  end
end