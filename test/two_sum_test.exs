defmodule LeetcodeElixirSolution.TwoSumTest do
  use ExUnit.Case
  doctest LeetcodeElixirSolution.TwoSum

  test "normal" do
    assert LeetcodeElixirSolution.TwoSum.resolve([4, 6, 9, 7, 2, 8, 1], 12) == [0, 5]
  end
end
