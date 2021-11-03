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
    count = 0
    self.split(/\?|\.|!/).each do |word|
      word.size > 0 ? count += 1 : count
    end
    count
  end
end