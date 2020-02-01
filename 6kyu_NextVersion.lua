--[[
You're fed up about changing the version of your software manually. Instead, you will create a little script that will make it for you.

Exercice
Create a function nextVersion, that will take a string in parameter, and will return a string containing the next version number.

For example:

	nextVersion("1.2.3") === "1.2.4";
	nextVersion("0.9.9") === "1.0.0";
	nextVersion("1") === "2";
	nextVersion("1.2.3.4.5.6.7.8") === "1.2.3.4.5.6.7.9";
	nextVersion("9.9") === "10.0";
Rules
All numbers, except the first one, must be lower than 10: if there are, you have to set them to 0 and increment the next number in sequence.

You can assume all tests inputs to be valid.
-]]

local kata = {}



---@param str string
function kata.nextVersion(str)
  -- next version !
  local stack = {};
  local newVersion = "";
  
  for n in str:gmatch('%d+') do
     stack[#stack+1] = tonumber(n);
   end
   
   stack[#stack] = stack[#stack] + 1;
   
   for i = #stack, 2, -1 do
     if stack[i] == 10 then
       stack[i - 1] = stack[i-1] + 1;
       stack[i] = 0;
     end
   end
   
   return table.concat(stack, ".");
   
end