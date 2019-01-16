defmodule LeetcodeElixirSolution.LengthOfLongestSubstring do
  @moduledoc """
  Given a string, find the length of the longest substring without repeating characters.

  Example 1:

  Input: "abcabcbb"
  Output: 3 
  Explanation: The answer is "abc", with the length of 3. 
  Example 2:

  Input: "bbbbb"
  Output: 1
  Explanation: The answer is "b", with the length of 1.
  Example 3:

  Input: "pwwkew"
  Output: 3
  Explanation: The answer is "wke", with the length of 3. 
               Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
  """
  def resolve(str) do
    check_length(String.codepoints(str), %{}, 0, 0, 0)
  end

  defp check_length([], _code_map, _start_index, _current_index, max_len) do
    max_len
  end

  defp check_length(remained, code_map, start_index, current_index, max_len) do
    [h | t] = remained
    index = Map.get(code_map, h)
    new_code_map = Map.put(code_map, h, current_index)

    if index != nil do
      check_length(
        t,
        new_code_map,
        index + 1,
        current_index + 1,
        Enum.max([1, max_len])
      )
    else
      check_length(
        t,
        new_code_map,
        start_index,
        current_index + 1,
        Enum.max([current_index - start_index + 1, max_len])
      )
    end
  end
end
