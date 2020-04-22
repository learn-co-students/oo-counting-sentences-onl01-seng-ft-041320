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
    # self.split(". ")
    # self.each.split("? ")
    # self.each.split("! ")
    # self.flatten.count

    # the gsub will add a | after each punctuation mark, and then can split after | and whitespace
    self.gsub(/[.?!]/, '\0|').split("| ").count
  end
end
