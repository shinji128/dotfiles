hs.hotkey.bind({ "alt" }, "space", function()
  local appName = "Alacritty"
  local app = hs.application.get(appName)

  if app == nil or app:isHidden() then
    hs.application.launchOrFocus(appName)
  else
    app:hide()
  end
end)

hs.hotkey.bind({ "alt" }, "s", function()
  local appName = "Slack"
  local app = hs.application.get(appName)

  if app == nil or app:isHidden() then
    hs.application.launchOrFocus(appName)
  else
    app:hide()
  end
end)

hs.hotkey.bind({ "alt" }, "g", function()
  local appName = "Google Chrome"
  local app = hs.application.get(appName)

  if app == nil or app:isHidden() then
    hs.application.launchOrFocus(appName)
  else
    app:hide()
  end
end)
