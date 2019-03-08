def dictionary
  to_replace = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(str)
  arr = []
  str.split.collect do |words|
  dictionary.each do |k, v|
      if words == k
        words = v
        end
      end
      arr.push(words)
    end
  arr.join(" ")
end

def bulk_tweet_shortener(str)
  str.each do |words|
    puts word_substituter(words)
  end
end


def selective_tweet_shortener(str)
  if str.join.length >= 140
    str.each do |words|
    puts bulk_tweet_shortener(words)
      end
    end
  end
