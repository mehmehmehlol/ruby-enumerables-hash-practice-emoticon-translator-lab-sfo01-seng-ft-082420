# require modules here
require 'yaml'
require 'pry'

def load_library(file_path = 'lib/emoticons.yml')
  # code goes here
  emoticons_library = YAML.load_file(file_path)
  emoticons_library.each_with_object({}) do |(key, value), final_hash|
    if !final_hash[key]
      final_hash[key] = {
        :english => value[0],
        :japanese => value[1]
      }
    end
  end
end

# def get_japanese_emoticon(file, eng_meaning)
#   # code goes here
#   emoticons = load_library(file)
# end

def get_english_meaning(file, jap_emo)
  # code goes here
  emoticons = load_library(file)
  eng_meaning = ""
  emoticons.each do |name, emo|
  #binding.pry
    
    if name[:japanese] == jap_emo
      eng_meaning = name
    else 
      eng_meaning = "Sorry, that emoticon was not found"
    end
    
  end
  eng_meaning
end