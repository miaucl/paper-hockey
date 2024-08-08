---@class MainMenu
---@field player_1_type number
---@field player_2_type number
---@field player_selected number
MainMenu = RunableCreate()
MainMenu.__index = MainMenu

---@alias PlayerType number
PLAYER_TYPE_NORMAL = 0
PLAYER_TYPE_NORMAL_ALT = 1
PLAYER_TYPE_NORMAL_ALT_ALT = 2

available_player_types = {"normal", "normal", "normal"}

---@return MainMenu
function MainMenuCreate()
  local o = {
    player_1_type = 0,
    player_2_type = 0,
    player_selected = 1,
    update_prio = 10,
    draw_prio = 10,
    ref = "MainMenu",
  }
  return setmetatable(o, MainMenu)
end

function MainMenu:Update()
  Runable.Update(self)

  if (btnp(⬅️)) self.player_selected = 1
  if (btnp(➡️)) self.player_selected = 2
  if self.player_selected == 1 then
    if (btnp(⬇️)) self.player_1_type += 1
    if (btnp(⬆️)) self.player_1_type -= 1
    self.player_1_type %= #available_player_types
  else
    if (btnp(⬇️)) self.player_2_type += 1
    if (btnp(⬆️)) self.player_2_type -= 1
    self.player_2_type %= #available_player_types
  end

  if (btnp(❎)) then
    run_list = {
      MapCreate()
    }
  end
end

function MainMenu:Draw()
  Runable.Draw(self)
  cls(0)
  ?"player 1",8,8,1
  ?"player 2",72,8,2
  if (self.player_selected == 1) circ(2,10,2,3)
  if (self.player_selected == 2) circ(66,10,2,3)
  for i,player_type in ipairs(available_player_types) do
    ?player_type,8,16+i*8,1
    ?player_type,72,16+i*8,2
  end
  circ(2,26+self.player_1_type*8,2,6)
  circ(66,26+self.player_2_type*8,2,6)
  ?"press X to start match",40,122,3
end