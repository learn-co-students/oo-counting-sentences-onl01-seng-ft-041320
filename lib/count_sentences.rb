require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def punctuation?
    self.sentence? || self.question? || self.exclamation?
  end

  def count_sentences
    sentences = 0
    split_array = self.split("")

    index = 1
    while index < split_array.size
      if split_array[index].punctuation?
        sentences += 1 if !split_array[index-1].punctuation?
      end 

      index += 1
    end

    sentences
  end
end