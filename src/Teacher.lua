
local Teacher = {}

function Teacher:ctor()
  print("teacher ctor")
  self.name=""
end

function Teacher:new()
  local o = {}
  setmetatable(o,self)
  self.__index=self
  print("teacher new")
  return o;
end

function Teacher:tellMeName()
  print("i am "..self.name)
end

return class(Teacher)
