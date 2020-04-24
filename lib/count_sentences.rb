require 'pry'

class String

  def sentence?
    self.end_with?(".")
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
    count = 0
    new_array = self.split(/[.!?]/)
    new_array.each do |array|
      if !array.empty?
        count += 1
      end
    end
    return count
  end

end