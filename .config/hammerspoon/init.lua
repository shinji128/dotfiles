function toggleApp(appName)
    local app = hs.application.get(appName)

    if app == nil or app:isHidden() then
        hs.application.launchOrFocus(appName)
    else
        app:hide()
    end
end

local appBindings = {
    { key = "v", appName = "Alacritty" },
    { key = "space", appName = "WezTerm" },
    { key = "s", appName = "Slack" },
    { key = "g", appName = "Clock" },
    { key = "f", appName = "Notion" },
    { key = "b", appName = "Arc.app" }
}

for _, binding in ipairs(appBindings) do
    hs.hotkey.bind({ "alt" }, binding.key, function()
        toggleApp(binding.appName)
    end)
end
