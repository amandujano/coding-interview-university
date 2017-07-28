def binary_search_recursion(arr, key, min_index, max_index)
  # base case 1: not found.
  return -1 if min_index > max_index

  # recusive calls
  mid_index = (max_index + min_index) / 2
  # mid_index = (max_index - 1 + min_index) / 2  if arr.size.odd?

  # base case 2: found!
  return mid_index if arr[mid_index] == key

  # recurisve calls:

  # if key is in the left
  if (key < arr[mid_index])
    binary_search_recursion(arr, key, min_index, mid_index - 1)
  else # else if key is in the right
    binary_search_recursion(arr, key, mid_index + 1, max_index)
  end
end

# tiny detail things that everyone hates
# 1. How to find the mid?
# odd number example:

# 0, 1, 2, 3, 4
# mid_index between 2 and 4 is 3, which is (2 + 4) / 2
# confirm it with another odd number:
# 1, 2, 3, 4, 5, 6, 7
# mid_index is between 1 and 5 is 3, which is (1 + 5 ) / 2

# even number example:
# 0, 1, 2, 3
# mid_index between 0 and 3 is 1, which is (3 + 0) / 2
# confirm it with another even number:
# 0, 1, 2, 3, 4, 5, 6, 7
# mid_index between 0 and 5 is 2, which is floor((5 + 0) / 2)
# so for even numbers, we check mid_index is floor((max_index + min_index)) / 2
# we go from min_index to mid_index - 1, then mid_index + 1 to end