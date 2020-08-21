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

def get_japanese_emoticon(file, eng_meaning)
  # code goes here
  emoticons = load_library(file)
end

def get_english_meaning(file_path, jap_emo)
  # code goes here
  library = load_library('./lib/emoticons.yml')
  library.each do |meaning, idioms|
    return meaning if idioms[:japanese] == jap_emo
  end
    "Sorry, that emoticon was not found"
 end 