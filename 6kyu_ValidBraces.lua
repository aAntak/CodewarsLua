--[[
    Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return true if the string is valid, and false if it's invalid.

    This Kata is similar to the Valid Parentheses Kata, but introduces new characters: brackets [], and curly braces {}. Thanks to @arnedag for the idea!

    All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.

    What is considered Valid?
    A string of braces is considered valid if all braces are matched with the correct brace.
--]]

--My solution 
local kata = {}

kata.validBraces = function(braces)
  -- your code goes here
  local table = { ['('] = ')', ['{'] = '}', ['['] = ']' }
  local stack = {};
  for i = 1, #braces, 1 do 
    local c = braces:sub(i,i);
    if c == '(' or c == '{' or c == '[' then
      stack[#stack+1] = c;
    elseif c == table[stack[#stack]] then
      stack[#stack] = nil;
    else return false;
    end
  end

  return true;
end

return kata

-Upvoted as most clever solution:
--[[
    return{validBraces=load"b=...return load('_'..b:gsub('[[{(]','(_(_%1_'):gsub('[]})]','%1))'))~=_"}
--]]


--#2 solution 

--[[
local kata = {}

kata.validBraces = function(braces)
  if braces:find("%(%)") then
    return kata.validBraces(braces:gsub("%(%)", ""))
  end
  if braces:find("%[%]") then
    return kata.validBraces(braces:gsub("%[%]", ""))
  end
  if braces:find("{}") then
    return kata.validBraces(braces:gsub("{}", ""))
  end
  return #braces == 0
end

return kata
--]]