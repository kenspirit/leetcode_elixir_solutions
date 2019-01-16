defmodule LeetcodeElixirSolution.AddTwoNumber do
  @moduledoc """
  You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

  You may assume the two numbers do not contain any leading zero, except the number 0 itself.

  Example:

  Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
  Output: 7 -> 0 -> 8
  Explanation: 342 + 465 = 807.
  """

  @doc """
  ## Examples
      iex> LeetcodeElixirSolution.AddTwoNumber.resolve([3, 6, 1], [8, 2, 5])
      [1, 9, 6]
  """
  def resolve(list1, list2) do
    Enum.reverse(add(list1, list2, [], 0))
  end

  defp add([], [], result, _carry) do
    result
  end

  defp add([h1 | t1], [h2 | t2], result, carry) do
    sum = h1 + h2 + carry

    add(t1, t2, [rem(sum, 10)] ++ result, div(sum, 10))
  end
end
