defmodule LeetcodeElixirSolution.AddTwoNumberTest do
  use ExUnit.Case
  doctest LeetcodeElixirSolution.AddTwoNumber

  test "normal" do
    assert LeetcodeElixirSolution.AddTwoNumber.resolve([3, 6, 1], [8, 2, 5]) == [1, 9, 6]
  end
end
