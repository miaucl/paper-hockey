---@class Debuggable
---@field ref string
Debuggable = {}
Debuggable.__index = Debuggable

---@return Debuggable
function DebuggableCreate()
  return setmetatable({ red = "Debuggable" }, Debuggable)
end
