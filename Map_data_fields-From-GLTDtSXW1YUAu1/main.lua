codemap = require 'codemap'
-- The codemap module is a helpful example showing how 
-- easy it is to map common fields from one value to another.
-- http://help.interfaceware.com/code/details/codemap-lua

function main()
   MapCodes()
   CheckSets()
end

-- We set up the code map
local SexCodeMap = codemap.map({
      M='Male',
      m='Male',
      F='Female',
      f='Female',
      W='Female'
   },'other')

function MapCodes()
   -- This shows mapping functionality
   local V = 'M'
   local W = 'W'
   local A = SexCodeMap[V]
   local B = SexCodeMap[W]
   trace(A)
   trace(B)
end

-- Here we set up a set which we can use to test to see
-- if something is a member of it.
local AmigoSet = codemap.set{"Fred", "Jim", "Harry"}

function CheckSets()
   local Name1 = "Fred"
   local Name2 = "Mary"
   if (AmigoSet[Name1]) then
      trace(Name1 .. " is one of the three amigos!")
   end
   
   if (not AmigoSet[Name2]) then
      trace(Name2 .. " is not one the three amigos!")
   end   
end