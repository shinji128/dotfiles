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
  local appName = "Clock"
  local app = hs.application.get(appName)

  if app == nil or app:isHidden() then
    hs.application.launchOrFocus(appName)
  else
    app:hide()
  end
end)

hs.hotkey.bind({ "alt" }, "f", function()
  local appName = "Notion"
  local app = hs.application.get(appName)

  if app == nil or app:isHidden() then
    hs.application.launchOrFocus(appName)
  else
    app:hide()
  end
end)
