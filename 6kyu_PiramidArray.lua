--[[
   Write a function that when given a number >= 0, returns an Array of ascending length subarrays. 

    pyramid(0) => [ ]
    pyramid(1) => [ [1] ]
    pyramid(2) => [ [1], [1, 1] ]
    pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]
--]]

return function(n)

    local mt = {};
    for i=1,n do
      mt[i] = {};
      for j=1, i do
        mt[i][j] = 1;
      end
    end
    return mt;
    
end

