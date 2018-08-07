def name_count (name)
  name = name.chars
  sum = 0
  # name count using ascii codes
  name.each do |n|
    sum +=   n.ord - 64
  end

  sum
end
def name_score
  names = File.open("names.txt","r").gets
  names = names.gsub!('"','').split(",").sort
  name_score = 0
  #  find name score (name count * its index in file)
  names.each_with_index do |nam , index|
    name_score += name_count(nam)*(index+1)
  end

  name_score
end

p name_score
