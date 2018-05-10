# 
# https://blog.lojic.com/2008/09/04/how-to-write-a-spelling-corrector-in-ruby/
# 
# def words text
#   text.downcase.scan(/[a-z]+/)
# end
# 
# def train features
#   model = Hash.new(1)
#   features.each {|f| model[f] += 1 }
#   p model
#   return model
# end
# 
# NWORDS = train(words(File.new('./lib/datasets/holmes.txt').read))
# LETTERS = ("a".."z").to_a.join
# 
# def edits1 word
#   n = word.length
#   deletion = (0...n).collect {|i| word[0...i]+word[i+1..-1] }
#   transposition = (0...n-1).collect {|i| word[0...i]+word[i+1,1]+word[i,1]+word[i+2..-1] }
#   alteration = []
#   n.times {|i| LETTERS.each_byte {|l| alteration << word[0...i]+l.chr+word[i+1..-1] } }
#   insertion = []
#   (n+1).times {|i| LETTERS.each_byte {|l| insertion << word[0...i]+l.chr+word[i..-1] } }
#   result = deletion + transposition + alteration + insertion
#   result.empty? ? nil : result
# end
# 
# def known_edits2 word
#   result = []
#   edits1(word).each {|e1| edits1(e1).each {|e2| result << e2 if NWORDS.has_key?(e2) }}
#   result.empty? ? nil : result
# end
# 
# def known words
#   result = words.find_all {|w| NWORDS.has_key?(w) }
#   result.empty? ? nil : result
# end
# 
# def correct word
#   (known([word]) or known(edits1(word)) or known_edits2(word) or
#     [word]).max {|a,b| NWORDS[a] <=> NWORDS[b] }
# end

# processor.instance_variable_get(:@word)
module Spellchecker
  class WordProcessor
    def initialize(word=nil)
      # the word we are going to process
      @word = word
      
      # a hash of all the words ranked by frequency
      @dataset = train(File.open('./lib/datasets/sentences.txt').read.downcase.scan(/[áéíóúa-z]+/))
      @letters = (("a".."z").to_a + ["á","é","í","ó","ú"]).join
    end
    
    def process word=@word
      @word=word
      
      (known([word]) || known(edits1(word)) || known_edits2(word) || [word]).max {|a,b| @dataset[a] <=> @dataset[b] }
    end
    
    private
    
    def train dataset
      model = Hash.new(1)
      dataset.each {|f| model[f] += 1 }
      model
    end
    
    # everything below this needs to be refactored
    
    def edits1 word
      n = word.length
      deletion = (0...n).collect {|i| word[0...i]+word[i+1..-1] }
      transposition = (0...n-1).collect {|i| word[0...i]+word[i+1,1]+word[i,1]+word[i+2..-1] }
      alteration = []
      n.times {|i| @letters.each_byte {|l| alteration << word[0...i]+l.chr+word[i+1..-1] } }
      insertion = []
      (n+1).times {|i| @letters.each_byte {|l| insertion << word[0...i]+l.chr+word[i..-1] } }
      result = deletion + transposition + alteration + insertion
      result.empty? ? nil : result
    end

    def known_edits2 word
      result = []
      edits1(word).each {|e1| edits1(e1).each {|e2| result << e2 if @dataset.has_key?(e2) }}
      result.empty? ? nil : result
    end

    def known words
      result = words.find_all {|w| @dataset.has_key?(w) }
      result.empty? ? nil : result
    end
  end
end