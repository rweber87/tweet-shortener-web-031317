# Write your code here.

def dictionary(word)

  words_to_be_substituted = {"hello" => "hi", "to" => 2, "too" => 2, "two" => "2", "for" => 4,
    "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}

  words_to_be_substituted.keys.include?(word.downcase) ? words_to_be_substituted[word.downcase] : (return word)

end

def word_substituter(tweet)
  tweet_sent = tweet.split(" ")
  tweet_array = []

  tweet_sent.each do |word|
    tweet_array << dictionary(word)
  end

  tweet_array.join(" ")

end

def bulk_tweet_shortener(tweet_array)

  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end

end

def selective_tweet_shortener(tweet)

  tweet.length > 140 ? word_substituter(tweet) : tweet

end

def shortened_tweet_truncator(tweet)

  tweet.length > 140 ? word_substituter(tweet)[0..135] + " ..." : tweet

end
