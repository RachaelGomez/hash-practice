
# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: ?
# Space Complexity: ?

def grouped_anagrams(strings)
  if strings.length == 0
    return []
  end
  anagrams = {}
  
  strings.each do |string|
    sorted = string.chars.sort
    if anagrams[sorted]
      anagrams[sorted] << string
    else
      anagrams[sorted] = [string]
    end
  end
  
  return anagrams.values

end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: ?
# Space Complexity: ?
def top_k_frequent_elements(list, k)
  if list.length == 0
    return []
  end

  counter_hash = {}
    list.each do |num|
      if counter_hash[num]
          counter_hash[num] += 1
      else
          counter_hash[num] = 1
      end
    end
  result = []
  counter_hash = counter_hash.sort_by{|k,v| v }.reverse
  index = 0
  k.times do
    result << counter_hash[index][0]
    index += 1
  end
    return result   
end


# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same 
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end
