def dictionary
  to_replace = {
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
  }
end

def word_substituter(str)
  str = str.split(" ")
  str.each do |words|
  dictionary.each do |k, v|
      if words == k
        words.replace(v)
        end
      end
    end
  str.join(" ")
end

def bulk_tweet_shortener(str)
  arr= ["test"]
  str.each do |words|
  dictionary.each do |k, v|
      if words == k
        str = words.replace(v)
        end
      end
    end
  puts str
end
