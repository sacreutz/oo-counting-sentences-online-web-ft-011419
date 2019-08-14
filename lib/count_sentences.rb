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
    split_everything = self.split('?!.')
    split_everything = split_everything.reject { |c| c.empty? }
    split_everything.count
  end
end