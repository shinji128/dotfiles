function toggleApp(appName)
  local app = hs.application.get(appName)

  if app == nil or app:isHidden() then
    hs.application.launchOrFocus(appName)
  else
    app:hide()
  end
end

local appBinds = {
  { prefix = { 'alt' }, key = "v", appName = "Alacritty" },
  { prefix = { 'alt' }, key = "space", appName = "WezTerm" },
  { prefix = { 'alt' }, key = "s", appName = "Slack" },
  { prefix = { 'alt' }, key = "g", appName = "Clock" },
  { prefix = { 'alt' }, key = "f", appName = "Notion" },
  { prefix = { 'alt' }, key = "b", appName = "Arc.app" }
}

for _, appBind in ipairs(appBinds) do
  hs.hotkey.bind(appBind.prefix, appBind.key, function()
    toggleApp(appBind.appName)
  end)
end
