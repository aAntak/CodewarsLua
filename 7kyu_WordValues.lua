--[[
    Given a string "abc" and assuming that each letter in the string has a value equal to its position in the alphabet, our string will have a value of 1 + 2 + 3 = 6. This means that: a = 1, b = 2, c = 3 ....z = 26.

    You will be given a list of strings and your task will be to return the values of the strings as explained above multiplied by the position of that string in the list. For our purpose, position begins with 1.

    nameValue ["abc","abc abc"] should return [6,24] because of [ 6 * 1, 12 * 2 ]. Note how spaces are ignored.

    "abc" has a value of 6, while "abc abc" has a value of 12. Now, the value at position 1 is multiplied by 1 while the value at position 2 is multiplied by 2.

    Input will only contain lowercase characters and spaces.

    Good luck!

    If you like this Kata, please try:
--]]
--My Solution

wordvalues = {}
function wordvalues.wordValues(arr)

local results = {};
local sum;

for k,v in ipairs(arr) do 
  sum=0;
  for i = 1, #v do
    local c = v:sub(i,i);
      if c~=' ' then
        sum=sum+(string.byte(c)-96);
      end
  end
  sum=sum*k;
  results[k] = sum;
end
return results;

 --code here
end
return wordvalues

--Upvoted as most clever solution:
--[[
    wordvalues = {}
function wordvalues.wordValues(arr)
  local result = {}
  for i, v in ipairs(arr) do
    local sum = 0
    for k in v:gmatch('%a') do
      sum = (k:byte()-96) + sum
    end
    table.insert(result, sum*i)
  end
  return result
end
return wordvalues
--]]