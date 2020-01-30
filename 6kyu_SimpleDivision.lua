--[[
    In this Kata, you will be given two numbers, a and b, and your task is to determine if the first number a is divisible by all the prime factors of the second number b. For example: solve(15,12) = False because 15 is not divisible by all the prime factors of 12 (which include2).
--]]

simplediv = {}
function findNextPrime(divider,num)
if divider == 2 or divider % 2 == 0 then
  divider = divider + 1;
else
  divider = divider + 2;
end
  for i = divider, num/2, 2 do
  if num % i == 0 then
    for j = 2, i-1, 1 do
      local temp = i % j;
        if temp == 0 then
          break;
        elseif j == i-1 then
          return i;
        end
    end
  end
end
  if num % 2 ~= 0 then
    return num;
  end;

end
function simplediv.solve(a,b)
local primeFactors = {};
local divider = 2;
local cnt = 1;
local sum = 1;
local initialValue = b;
  while(initialValue>sum) do
    local temp = b % divider;
    if(temp == 0) then
      primeFactors[cnt] = divider;
      b = b // divider;
      cnt = cnt + 1;
      sum = sum * divider;
    else
      divider = findNextPrime(divider, initialValue);
    end
  end
  
  for k,v in ipairs(primeFactors) do
    if a % v ~= 0 then
      return false;
    end
  end
  return true;
  
end

return simplediv

----Upvoted as most clever solution: 
----Much more clever:)
--[[
   simplediv = {}
function gcdK(a,b)
  if (b == 0) then return a else return gcdK(b, a % b) end 
end 

function simplediv.solve(a,b)
  if b==1 then return true end
  if gcdK(a,b) == 1 then return false end
  return  simplediv.solve(a,b/(gcdK(a,b)))
end
return simplediv
--]]