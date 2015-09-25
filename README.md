# Anagrams

### Prompt

If you had two inputs: 1 million unique English words, all fewer than 35 characters, and a list of string characters.  Please output all valid anagrams.  A valid anagram is a word that has the same characters as another word;  The second parameter is just a string.  So for example, If the second param is "tips" the resulting output should be ["pits", "spit"].  That assumes of course that the dictionary contains "pits" and "spit".

### Testing

To test app run `bundle exec rspec`

### How To Run

To run app:

1. run `bundle install` (assuming you have bundler installed)
1. run `ruby lib/anagrams.rb #{search_word1} #{search_word2} #{search_word3} #{search_word4}....`

### Example Test Case

`lib/anagrams.rb doom soon aeprs`

### Note

Program chooses words from a word bank. This word bank is located in `lib/words.txt`. There are currently ~23,000 words in the file. If you would like to change the word bank or alter it just amend the `words.txt` file.

### Further Implementation

- I would add error handling for the inputs
- I would enable the ability to enter a file from the command line
- To create the fastest search possible I could setup a DB for a word bank and create a data structure for better searching.


Total Time Spent: 3 Hours
