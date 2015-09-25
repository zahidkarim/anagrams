require_relative 'anagram_sorter'
require_relative 'anagram_presenter'

words = File.dirname(__FILE__) + '/words.txt'
word_bank = File.read(words).split()

words_to_match = ARGV

words_to_match.each do |word_to_match|
  anagrams = AnagramSorter.new(word_bank, word_to_match).find_anagrams
  AnagramPresenter.display(word_to_match, anagrams)
end
