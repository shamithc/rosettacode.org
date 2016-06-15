# Find the smallest missing number

# Input array of sorted integers
# Output
#   If no number missing, return -1
#   if smallest found, return number

def smallest_missing_number array, start, last
  return last +1 if start > last

  return start if start != array[start]

  mid = (start+last)/2

  if array[mid] > mid
  	smallest_missing_number(array, start, mid-1)
  else
  	smallest_missing_number(array, mid+1, last)
  end
end
