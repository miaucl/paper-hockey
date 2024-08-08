---@class Playground
---@field selected_map number
---@field player_1 Player
---@field player_2 Player
Playground = RunableCreate()
Playground.__index = Playground

---@return Playground
---@param player_1 PLAYER_TYPE
---@param player_2 PLAYER_TYPE
function PlaygroundCreate(player_1, player_2)
  local o = {
    selected_map = 0,
    player_1 = player_1,
    player_2 = player_2,
    ref = "Map",
  }
  return setmetatable(o, Playground)
end


function Playground:Draw()
  Runable.Draw(self)
  cls(0)
  if (self.selected_map == 0) map(0,0,0,0,16,16)
  ?"player 1",0,0,1
  ?self.player_1.type_label,0,6,1
  ?"player 2",128-4*8,0,5
  ?self.player_2.type_label,128-4*#self.player_2.type_label,6,5
end