def hello_t(array)
  # method will yield each element of the array to the block if a block is present 
  if block_given? #returns true if the method is called with a block 
    i = 0 
  
    while i < array.length #execute as long as i < length of array
      # i = a given index number of our array in each iteration
      # use this info to yield each successive value stored in the array 
      # to the passed-in block:
      yield array[i]
      # [] method to grab the value of each successive index element as we proceed through our while loop
      # yielding each to a block
      i += 1 # increment the value of i
    end
  
    array
  else # mif block is not present, method will puts out a helpful phrase
    puts "Hey! No block was given!"
  end
end

#method can be called either with or without a block

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
