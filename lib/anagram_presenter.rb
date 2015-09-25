class AnagramPresenter
  def self.display(search_word, anagrams)
    puts "Anagrams for #{search_word}:"
    puts "*"*50
    anagrams.each { | anagram | puts anagram }
    puts "*"*50
  end
end
