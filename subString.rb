def substrings(message, dictionary)
    result = Hash.new(0)
    lowered_text = message.downcase
  
    dictionary.each do |word|
      matches = lowered_text.scan(word).length
      result[word] = matches unless matches == 0
    end
  
    return result
  end
  