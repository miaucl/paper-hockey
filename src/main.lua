function _init()
  --spr(0,60,60)

  run_list = {MainMenuCreate()}
end

function _update()
  for item in all(run_list) do
    item:Update()
  end
end

function _draw()
  for item in all(run_list) do
    item:Draw()
  end
end