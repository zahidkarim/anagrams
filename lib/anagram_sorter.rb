require 'pry'

class AnagramSorter
  attr_accessor :word_bank, :search_word, :anagrams

  def initialize(word_bank, search_word)
    @word_bank = word_bank
    @search_word = search_word
  end

  def find_anagrams
    word_bank.
      select{|w| correct_length?(w)}.
      select{|w| anagram?(w)}
  end

  private

  def correct_length?(word)
    word.length == search_word.length
  end

  def anagram?(word)
    sorted_word = sort_word(word)
    sorted_search_word = sort_word(search_word)

    sorted_word == sorted_search_word
  end

  def sort_word(word)
    word.chars.sort.join
  end
end
