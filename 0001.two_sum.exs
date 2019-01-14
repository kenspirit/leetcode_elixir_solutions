# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# Example:

# Given nums = [2, 7, 11, 15], target = 9,

# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

two_sum = fn items, target ->
  check_item = fn (f, [h | t], target, item_map, index) ->
    cond do
      h > target ->
        f.(f, t, target, item_map, index + 1)
      (complement_index = Map.get(item_map, target - h)) != nil ->
        [complement_index, index]
      true ->
        f.(f, t, target, Map.put(item_map, h, index), index + 1)
    end
  end

  check_item.(check_item, items, target, %{}, 0)
end

IO.inspect two_sum.([4, 6, 9, 7, 2, 8, 1], 12)
