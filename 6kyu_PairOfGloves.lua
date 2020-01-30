--[[
    Winter is comming, you must prepare your ski holidays. The objective of this kata is to determine the number of pair of gloves you can constitute from the gloves you have in your drawer.
    A pair of gloves is constituted of two gloves of the same color.
    You are given an array containing the color of each glove.
    You must return the number of pair you can constitute.
    You must not change the input array.
--]]

--My solution
local kata = {}


function kata.number_of_pairs(gloves)
--My hands are freezing
  local glovesTable = {};
  
  for k,v in ipairs(gloves) do
    glovesTable[v] = (glovesTable[v] or 0) + 1
  end
  
  local pairsSum = 0;
  for k,v in pairs(glovesTable) do
     pairsSum = pairsSum + v//2;
  end
  
  return pairsSum;
end

return kata

--Upvoted as most clever solution:
--[[
local kata = {}


function kata.number_of_pairs(gloves)
--My hands are freezing
    local t = {}
    local count = 0
    for k, v in ipairs(gloves) do
        if t[v] then
            count = count + 1
            t[v] = nil
        else
            t[v] = 1
        end
    end
    return count
end

return kata
--]]
