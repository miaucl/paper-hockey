---@class Player
---@field type PLAYER_TYPE
---@field type_label string
Player = RunableCreate()
Player.__index = Player

---@param type PLAYER_TYPE
---@return Player
function PlayerCreate(type)
  local o = {
    type = type,
    type_label = available_player_types[type+1],
    ref = "Player",
  }
  return setmetatable(o, Player)
end

