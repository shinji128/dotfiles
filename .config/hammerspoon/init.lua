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
  { prefix = { 'alt' }, key = "t", appName = "Clock" },
  { prefix = { 'alt' }, key = "n", appName = "Notion" },
  { prefix = { 'alt' }, key = "a", appName = "Arc.app" },
  { prefix = { 'alt' }, key = "p", appName = "Postman" }
}

for _, appBind in ipairs(appBinds) do
  hs.hotkey.bind(appBind.prefix, appBind.key, function()
    toggleApp(appBind.appName)
  end)
end
