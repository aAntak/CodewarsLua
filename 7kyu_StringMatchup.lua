--[[
    Given two arrays of strings, return the number of times each string of the second array appears in the first array.
    array1 = ['abc', 'abc', 'xyz', 'cde', 'uvw']
    array2 = ['abc', 'cde', 'uap']

    How many times do the elements in array2 appear in array1?

    'abc' appears twice in the first array (2)
    'cde' appears only once (1)
    'uap' does not appear in the first array (0)
    Therefore, solve(array1, array2) = [2, 1, 0]
--]]

--My Solution
matchup = {}
function matchup.solve(a,b)

local rt = {};
local cnt;
for k,v in ipairs(b) do
  cnt=0;
  for k2,v2 in ipairs(a) do
    if(v==v2) then
      cnt=cnt+1;
    end
  end
  rt[k] = cnt;
end
return rt;
end
return matchup

--Upvoted as most clever solution:
--[[
    return{
  solve = function(a,b)
    local lookup, matchup = {}, {}
    for _, v in pairs(a) do
      lookup[v] = (lookup[v] or 0) + 1
    end
    for i, v in ipairs(b) do
      matchup[i] = lookup[v] or 0
    end
    return matchup
  end
}
--]]