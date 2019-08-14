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
    split_everything = self.split(/\w+(,)\w+/)
    split_everything.delete_if{|e| e.length == 0}
    split_everything.count
  end
end