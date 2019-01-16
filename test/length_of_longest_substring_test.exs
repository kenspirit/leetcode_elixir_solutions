defmodule LeetcodeElixirSolution.LengthOfLongestSubstringTest do
  use ExUnit.Case
  doctest LeetcodeElixirSolution.LengthOfLongestSubstring

  test "multiple character repeat" do
    assert LeetcodeElixirSolution.LengthOfLongestSubstring.resolve("abcabcbb") == 3
  end

  test "single character repeat" do
    assert LeetcodeElixirSolution.LengthOfLongestSubstring.resolve("bbbbbb") == 1
  end

  test "continuous repeat" do
    assert LeetcodeElixirSolution.LengthOfLongestSubstring.resolve("pwwkew") == 3
  end

  test "my name" do
    assert LeetcodeElixirSolution.LengthOfLongestSubstring.resolve("kenchen") == 5
  end
end
