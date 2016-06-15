# Count the number of occurrences in a sorted array
# Use binary search
def occurrence(array, number, first_occurrence = true)
  low = 0
  high = array.length -1
  result = -1

  while low <= high
    mid = (low + high)/2
  	if array[mid] == number
  		result = mid
  		if(first_occurrence)
  			high = mid -1
  		else
  			low = mid +1
  		end
  	elsif number < array[mid]
  		high = mid -1
  	else
  		low = mid +1
  	end
  end
  result
end

array = [12, 15, 16, 16, 16, 34, 45, 45, 67]
first = occurrence(array, 16)
last = occurrence(array, 16, false)

p "No of occurrence of 16 is #{first - last +1}"

