# require modules here
require 'pry'
require "yaml"

def load_library(pathFile)
  newListA = YAML.load_file(pathFile)
  newList = {"get_emoticon" => {}, "get_meaning" => {}}
  
  newListA.each do |x,emoticon|
    newList['get_meaning'][emoticon[1]] = x
    newList['get_emoticon'][emoticon[0]] = emoticon[1]
  end
  
  return newList
  
end

def get_japanese_emoticon(pathFile,emotion)
  newListA = load_library(pathFile)
  
  if newListA['get_emoticon']["#{emotion}"]
    daEmote = newListA['get_emoticon']["#{emotion}"]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(pathFile,emotion)
  newListA = load_library(pathFile)
  
  if newListA['get_meaning']["#{emotion}"]
    daEmote = newListA['get_emoticon']["#{emotion}"]
  else
    return "Sorry, that emoticon was not found"
  end
end