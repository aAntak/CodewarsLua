--[[
 Complete the function/method so that it returns the url with anything after the anchor (#) removed.
--]]
--My Solution
return {
    removeUrlAnchor = function(s)
      -- TODO: complete
             s = string.gsub(s, "#.*", "");
            return s;
    end
}

--Upvoted as most clever solution:
--[[
    return {
    removeUrlAnchor = function(s)
      return s:match("[^#]+")
    end
  }
--]]