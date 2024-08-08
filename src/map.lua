---@class Map
---@field selected_map number
Map = RunableCreate()
Map.__index = Map

---@return Map
function MapCreate()
  local o = {
    selected_map = 0,
    ref = "Map",
  }
  return setmetatable(o, Map)
end


function Map:Draw()
  Runable.Draw(self)
  cls(0)
  if (self.selected_map == 0) map(0,0,0,0,16,16)
  ?"player 1",0,0,1
  ?"normal",0,6,1
  ?"player 2",96,0,5
  ?"normal",96,6,5
end