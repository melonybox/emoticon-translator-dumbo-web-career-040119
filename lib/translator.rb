# require modules here
require 'pry'
require "yaml"

def load_library(pathFile)
  newListA = YAML.load_file(pathFile)
  newList = {"get_emoticon" => {}, "get_meaning" => {}}
  
  newListA.each do |x,y|
    newList['get_meaning']
    binding.pry
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end