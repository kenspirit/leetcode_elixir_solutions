defmodule LeetcodeElixirSolution.TwoSum do
  @moduledoc """
  Given an array of integers, return indices of the two numbers such that they add up to a specific target.

  You may assume that each input would have exactly one solution, and you may not use the same element twice.

  Example:

  Given nums = [2, 7, 11, 15], target = 9,

  Because nums[0] + nums[1] = 2 + 7 = 9,
  return [0, 1].
  """

  @doc """
  ## Examples
      iex> LeetcodeElixirSolution.TwoSum.resolve([4, 6, 9, 7, 2, 8, 1], 12)
      [0, 5]
  """
  def resolve(items, target) do
    check_item(items, target, %{}, 0)
  end

  defp check_item([h | t], target, item_map, index) do
    cond do
      h > target ->
        check_item(t, target, item_map, index + 1)

      (complement_index = Map.get(item_map, target - h)) != nil ->
        [complement_index, index]

      true ->
        check_item(t, target, Map.put(item_map, h, index), index + 1)
    end
  end
end
