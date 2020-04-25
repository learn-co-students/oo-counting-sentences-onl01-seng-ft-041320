require 'pry'

class String

  def sentence?
    self.end_with?(".")
    
  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")

  end

  def count_sentences
    binding.pry
    if(!self.include?".")
      return 0
    else
    new_array = self.split(/[.?!]/).reject {|word| word.empty?}
    return new_array.length
    end
  end
end