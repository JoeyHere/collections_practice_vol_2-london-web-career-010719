# your code goes here
def begins_with_r(array)
  array.each {|x| return false if x.start_with?("r") == false}
  return true
end

def contain_a(array)
  array.collect {|x| x if x.include?("a")}.compact
end

def first_wa(array)
  array.each {|x| return x.to_s if x.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.collect {|x| x if x.is_a? String}.compact
end

def count_elements(array)
  array.uniq.collect {|x| x[:count] = array.count(x); x}
end

def merge_data(keys, data)
  keys.collect {|key| key.merge(data[0][key[:first_name]].to_h)}
end

def find_cool(array)
  array.select {|value| value[:temperature] == "cool"}
end

def organize_schools(schools)
locations = schools.values.collect {|x| x[:location]}.uniq!
school_h = {}
  locations.each do |city|
    school_h[city]=[]
    schools.each {|school, local| school_h[city] << school if local[:location] == city}
  end
school_h
end
