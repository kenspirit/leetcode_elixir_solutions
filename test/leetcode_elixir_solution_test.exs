defmodule LeetcodeElixirSolutionTest do
  use ExUnit.Case
  doctest LeetcodeElixirSolution

  test "greets the leetcode" do
    assert LeetcodeElixirSolution.hello() == :leetcode
  end
end
