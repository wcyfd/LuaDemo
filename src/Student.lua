local Person = require("Person")
local Student = Person:new()

function Student:new(grade)
  local o = {}
  setmetatable(o,self)
  self.__index=self

  self.grade = grade

  return o
end

function Student:getGrade()
  return self.grade
end

return Student
