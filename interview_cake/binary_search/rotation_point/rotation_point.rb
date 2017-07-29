def find_rotation_index(arr)
  # main idea: the rotation point is to our left if the current item
  # is less than the first item.
  # else it is to our right

  if arr.size == 1
    return 0
  end

  min_index = 0
  max_index = arr.size - 1
  while true
    mid_index = (max_index + min_index) / 2
    mid_index = 1 if mid_index == 0
    first_element = arr[min_index]

    if max_index - min_index == 1 # two elements left
      if arr[max_index] > arr[min_index]
        return -1
      else
        return max_index # in the case of [2, 1]
      end
    end

    if arr[mid_index] < first_element # to our left
      max_index = mid_index
    else # to our right
      min_index = mid_index
    end
  end
end