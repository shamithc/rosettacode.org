def binary_search_by_recursive(array, number, low =0, high = nil)
  high ||= array.length
  mid = (high + low)/2

  if array[mid] == number
  	return mid
  end

  return -1 if low >= high

  if array[mid] > number
  	return binary_search_by_recursive(array, number, low, mid-1)
  else
  	return binary_search_by_recursive(array, number, mid+1, high)
  end
end
