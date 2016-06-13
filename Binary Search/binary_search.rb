def binary_search(array, number)
  lower = 0
  high = (array.length-1)
  index = -1

  while (lower <= high) do
      mid = (high + lower)/2
    if (array[mid] == number)
    	index = mid
    	break
    else
      if(array[mid] > number)
      	high = mid -1
      else
      	lower = mid + 1
      end
    end
  end

  return index
end
