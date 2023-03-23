dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)     
     # Create an empty hash to store the counts of substrings
  substrings_counts = Hash.new(0)
  
  # Split the input string into an array of words
  words = string.split(/\W+/)
  
  # For each word in the array, check if it matches any word in the dictionary
  words.each do |word|
    dictionary.each do |substring|
      if word.downcase.include?(substring)
        substrings_counts[substring] += 1
      end
    end
  end
  p substrings_counts
end

substring("below", dictionary)