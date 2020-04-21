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
    if !self.include?(".")
      return 0 
    end 
    sent_array = self.split("")
    sent_ends = '!?.'
  count = 0
  sent_array.each_with_index do |ele, i|
    if(sent_ends.include?(ele) && !sent_ends.include?(sent_array[(i + 1) % sent_array.length]))
      count += 1
    end
  end
  count
end

end