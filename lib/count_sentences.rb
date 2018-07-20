require 'pry'

class String

  # attr_accessor :string

  def sentence?
    if self.split("").pop == "."
      true
    else
      false
    end
  end

  def question?
    if self[self.length-1] == "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self[-1] == "!"
      true
    else
      false
    end
  end

  def count_sentences

    # self.split(" ").length

    string_array = self.split(" ")
    count = 0
    string_array.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        count += 1
      end
    end
    count
  end

end

# This is how the instance of String looks like...

# a = String.new("mango")
# a => "mango"
