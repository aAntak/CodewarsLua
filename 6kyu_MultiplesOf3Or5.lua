--[[
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.
-]]

--My solution
local solution = {}

function solution.solution(value)
  -- Your code here.
  local sum=0;
  for i=1,value-1,1 do
    if math.fmod(i,3)==0 or math.fmod(i,5)==0 then
      sum=sum+i;
    end
  end
  return sum;
  
end

return solution

--[[ Upvoted as most clever solution:
local solution = {}

function solution.solution(value)
  local sum = 0
  for i=0,value-1,1
  do
    if i%3==0 or i%5==0 then sum = sum +i end
  end
    
  return sum
end

return solution
--]]