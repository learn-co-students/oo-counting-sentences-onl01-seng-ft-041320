require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    sentence_arr = self.split(/[.?!]/)
    i = 0
    while i < sentence_arr.length
      sentence_arr.delete_at(i) if sentence_arr[i] == '';
      i += 1
    end
    sentence_arr.length
  end
end
