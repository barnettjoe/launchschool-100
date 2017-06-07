words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

words_hash = {}
words.each {|x| words_hash[x] = "not_found"}

all_anagrams = []

for i in words
  if words_hash[i] == "not_found"
    anagrams = []
    word_letters = i.split('').sort
    for j in words
      if j.split('').sort == word_letters && words_hash[j] == "not_found"
        anagrams.push(j)
        words_hash[j] = "found"
      end
    end
    if anagrams.length > 1
      all_anagrams.push(anagrams)
    end
  end
end

all_anagrams.each do |anagram_array|
  puts "anagrams of #{anagram_array[0]}:"
    (1...anagram_array.length).each {|n| puts anagram_array[n]}
  puts ''
end
