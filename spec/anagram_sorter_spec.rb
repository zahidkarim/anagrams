require_relative '../lib/anagram_sorter'
require 'spec_helper'

describe AnagramSorter do
  let(:word_bank) { ["doom", "mood", "life", "file"] }

  it 'generates the correct anagrams' do
    response = AnagramSorter.new(word_bank, "oomd").find_anagrams

    expect(response).to include("doom")
    expect(response).to include("mood")
    expect(response).to_not include("life")
    expect(response).to_not include("file")
  end
end

