# Given a string, find the length of the longest substring without repeating characters.

# Example 1:

# Input: "abcabcbb"
# Output: 3 
# Explanation: The answer is "abc", with the length of 3. 
# Example 2:

# Input: "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.
# Example 3:

# Input: "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3. 
#              Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

length_of_longest_substring = fn str ->
  check_length = fn (f, remained, code_map, start_index, end_index, current_max_len) ->
    if remained == [] do
      current_max_len
    else
      [h | t] = remained
      index = Map.get(code_map, h)
      new_code_map = Map.put(code_map, h, end_index)

      if index != nil do
        f.(f, t, new_code_map, index + 1, start_index + 1, Enum.max([1, current_max_len]))
      else
        f.(f, t, new_code_map, start_index, end_index + 1, Enum.max([end_index - start_index + 1, current_max_len + 1]))
      end
    end
  end

  check_length.(check_length, String.codepoints(str), %{}, 0, 0, 0)
end

IO.inspect length_of_longest_substring.("bbbbb")
