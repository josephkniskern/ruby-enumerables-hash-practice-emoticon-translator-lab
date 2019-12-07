# require modules here
require "pry"
require "yaml"
#emoticons = YAML.load('./lib/emoticons.yml')

def load_library(path)

  emoticons = YAML.load_file("./lib/emoticons.yml")
  
  hash = {
    :get_emoticon => {},  
    :get_meaning => {} 
  }
  
  emoticons.each do |k, v| 
    hash[:get_emoticon][v[0]] = v[1] # english emoticon = japanese
    hash[:get_meaning][v[1]] = k #japanese emoticon = word
  end
  
  return hash
  #binding.pry
end

def get_japanese_emoticon(path, emoticon)
  load_library(path)
  emoticons.each do |k, v|
    emoticon = emoticons[k][1]
  end
  
  return emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end