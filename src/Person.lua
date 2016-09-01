local Person = class(Object)

function Person:ctor()
  self.name="";
  self.age=0;
  self.sex=0;
end

function Person:new(name,age,sex)
  local o = {}
  setmetatable(o,self)
  self.__index=self
  self:ctor()

  o.name=name;
  o.age=age;
  o.sex=sex;

  return o
end



function Person:sayHello()
  print("hello "..self.name)
end

function Person:getAge()
  return self.age
end

function Person:getSex()
  return self.sex
end

return Person
