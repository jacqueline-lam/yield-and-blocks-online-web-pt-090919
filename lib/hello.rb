def hello_t(array)
  # set a counter variable, i, equal to 0
  i = 0 
  
  while i < array.length #execute as long as i < length of array
    # i = a given index number of our array in each iteration
    # use this info to yield each successive value stored in the array 
    # to the passed-in block:
    yield array[i]
    i += 1 # increment the value of i
  end
  
end

# call your method here!

