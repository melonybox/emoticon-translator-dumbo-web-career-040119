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
  
  # code goes here
end

def get_english_meaning
  # code goes here
end