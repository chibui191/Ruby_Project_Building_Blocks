dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

search_for = "Howdy partner, sit down! How's it going??"

def split_word(s)
  0.upto(s.length - 1).flat_map do |start|
    1.upto(s.length - start).map do |length|
      s[start, length]
    end
  end.uniq
end

def substrings(string, dictionaryArr)
  result_hash = {}
  search_for_words = string.gsub(/[^0-9a-z ]/i, '').downcase.split(" ")
  search_for_array = []
  search_for_words.each do |word| 
    search_for_array += split_word(word)
    search_for_array.uniq
  end
  search_for_array.each do |substring|
    if dictionaryArr.include? substring
      if result_hash[substring].nil?
        result_hash[substring] = 1
      else
        result_hash[substring] += 1
      end
    end
  end
  result_hash
end

puts substrings(search_for, dictionary)
puts substrings("below", dictionary)
