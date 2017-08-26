# Write your code here.
def dictionary
{
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "four" =>"4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@" ,
  "and" => "&"
}
end

def word_substituter(str)
  str_arr = str.split(" ")
  myArr = []

  str_arr.each do |word|
    if dictionary.keys.include?(word.downcase)
      myArr.push(dictionary[word.downcase])
    else
      myArr.push(word)
    end
  end
  myArr.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |elem|
    puts word_substituter(elem)
  end
end

def selective_tweet_shortener(str)
  if str.length > 140
    str.split.collect do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
      end
    end.join(" ")
  else
    str
  end
end

def shortened_tweet_truncator(str)
  if selective_tweet_shortener(str).length > 140
    word_substituter(str)[0..136] + "..."
  else
    str
  end
end
