def begins_with_r(arr)

  if arr.any? {|w| w[0] != "r"}
    return false
  else
    return true
  end
end

def contain_a(arr)
  a = arr.select {|w|
    w.include? ("a")}
  a
end

def first_wa(arr)
  arr.find {|w|
   w[0]== "w" and w[1]=="a"}
end

def remove_non_strings(arr)
  string_con = []
  arr.each do |element|
    string_con << element if element.is_a?(String)
  end
  string_con
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  container = []
  keys.each do |x|
    name = x[:first_name]
    data.each do |y|
      if y[name]
        merged_data = y[name]
        merged_data[:first_name] = name
        container <<  merged_data
      end
    end
  end
  container
end

def find_cool(array)
  array.select {|x|
    x[:temperature]=="cool"}
end

def organize_schools(schools)
  organized_schools ={}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else organized_schools[location] = []
         organized_schools[location]<< name
    end
  end
  organized_schools
end          
