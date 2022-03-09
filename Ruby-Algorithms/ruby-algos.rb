# convert string to camel case
# https://www.codewars.com/kata/517abf86da9663f1d2000003/train/ruby

def to_camel_case(str)
  result = []
  str == "" ? "" : str.include?("_") ? result = str.split("_") : str.include?("-") ? result = str.split("-") : nil
  result.each {|a| result.index(a) == 0 ? a : a.capitalize!}.join("")
end

# The Hashtage Generator
# https://www.codewars.com/kata/52449b062fb80683ec000024/train/ruby

def generateHashtag(str)
  result = []
  result = str.split(" ")
  result.insert(0, "#")
  final = result.each {|a| a.capitalize!}.join("")
  final == "#" || final.length > 140  ? false : final
end
