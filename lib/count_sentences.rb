require 'pry'

class String

  def sentence?()
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    sentences_array = self.split(/[.?!]/).reject {|string| string.empty?}
    return sentences_array.length
  end
end