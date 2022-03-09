# https://www.codewars.com/kata/517abf86da9663f1d2000003/train/ruby

def to_camel_case(str)
  result = []
  str == "" ? "" : str.include?("_") ? result = str.split("_") : str.include?("-") ? result = str.split("-") : nil
  result.each {|a| result.index(a) == 0 ? a : a.capitalize!}.join("")
end