--[[
Once upon a time, on a way through the old wild mountainous west,…
… a man was given directions to go from one point to another. The directions were "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too.

Going to one direction and coming back the opposite direction right away is a needless effort. Since this is the wild west, with dreadfull weather and not much water, it's important to save yourself some energy, otherwise you might die of thirst!

How I crossed a mountain desert the smart way.
The directions given to the man are, for example, the following (depending on the language):

Notes
Not all paths can be made simpler. The path ["NORTH", "WEST", "SOUTH", "EAST"] is not reducible. "NORTH" and "WEST", "WEST" and "SOUTH", "SOUTH" and "EAST" are not directly opposite of each other and can't become such. Hence the result path is itself : ["NORTH", "WEST", "SOUTH", "EAST"].
n ["NORTH", "SOUTH", "EAST", "WEST"], the direction "NORTH" + "SOUTH" is going north and coming back right away.

The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate each other, therefore, the final result is [] (nil in Clojure).

In ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"], "NORTH" and "SOUTH" are not directly opposite but they become directly opposite after the reduction of "EAST" and "WEST" so the whole path is reducible to ["WEST", "WEST"].
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