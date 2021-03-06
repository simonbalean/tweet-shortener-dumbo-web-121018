# Write your code here.

def dictionary
  dictionary = {
    "hello" => "hi", 
    "to" => "2", 
    "two" => "2", 
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b", 
    "you" => "u",
    "at" => "@",
    "and" => "&",
    
    "Hello" => "hi", 
    "To" => "2", 
    "Two" => "2", 
    "Too" => "2",
    "For" => "4",
    "Four" => "4",
    "Be" => "b", 
    "You" => "u",
    "At" => "@",
    "And" => "&",
  }
end


def word_substituter(string)
  string.split.collect do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else word
    end
  end.join(" ")
end


def bulk_tweet_shortener(array)
  array.each do |string|
    puts word_substituter(string)
  end
end


def selective_tweet_shortener(string)
  if string.size > 140
    word_substituter(string)
  else string 
  end 
end


def shortened_tweet_truncator(string)
  if word_substituter(string).size > 140
    word_substituter(string)[0..136] + "..."
  else string
  end 
end




