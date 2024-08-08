---@class Runable
---@field update_prio number
---@field draw_prio number
Runable = DebuggableCreate()
Runable.__index = Runable

---@return Runable
function RunableCreate()
  local o = {
    update_prio = 1,
    draw_pro = 1,
    red = "Runable"
  }
  return setmetatable(o, Runable)
end

function Runable:Update()
  --printh("Update: "..self.ref)
end


function Runable:Draw()
  --printh("Draw: "..self.ref)
end