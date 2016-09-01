local Object = require("Object")

function class(class,superClass)
  if not superClass then
    superClass=Object;
  end

  setmetatable(class,superClass)
  superClass.__index=superClass
  class:ctor()

  return class
end
return class;
