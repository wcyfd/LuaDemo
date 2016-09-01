local Object={}

function Object:ctor()

end

function Object:new()
  local o = {}
  setmetatable(o,self)
  self.__index=self
  
  return o
end

return Object
