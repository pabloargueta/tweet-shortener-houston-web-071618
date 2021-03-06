# Write your code here.
def dictionary
dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two"=> "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and"=> "&"
}

end

def word_substituter(tweet_string)
  
  tweet_array = tweet_string.split(" ")
  
  tweet_array.collect{ |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  }.join(" ")
  
end

def bulk_tweet_shortener(array_tweets)
  array_tweets.each { |tweet|
    puts word_substituter(tweet)
  }
  
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + '...'
  else
    tweet
  end
end