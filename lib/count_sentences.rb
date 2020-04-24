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
    string_input = ""
    count = 0
    string_input = self
    count = string_input.split(/\.|\?|\!\s/).length
  end
end
# strings = []
# strings = "string? needs to end???? Now!!!  sjkhfkjd us stupid. lkdfjalkj done with this. okay?".split(". ")
# print strings
