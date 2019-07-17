class Replace
  def initialize(phrase)
    @@phrase = phrase
  end
  def phrase
    @@phrase
  end
  def replace(thing_to_replace, replacement)
    @@thing_to_replace = thing_to_replace
    @@replacement = replacement
    @@phrase[thing_to_replace]=replacement
  end
end

file = File.open('lib/sentence_file.txt')
file_data = file.read
file.close()
our_replace = Replace.new(file_data)
our_replace.replace("I am", "We are")
puts our_replace.phrase
