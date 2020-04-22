require 'pry'

class String

  def sentence?
    self.end_with? (".")
  end

  def question?
self.end_with? ("?")
  end

  def exclamation?
self.end_with? ("!")
  end

  def count_sentences
   #complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
     self.split(/\.|\?|\!/).delete_if {|word| word.size < 2}.size
  end
end