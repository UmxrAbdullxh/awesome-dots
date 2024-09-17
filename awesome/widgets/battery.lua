local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")

local battery_widget = {}

function battery_widget.new()
	local widget = wibox.widget({
		{
			id = "txt",
			widget = wibox.widget.textbox,
		},
		layout = wibox.layout.fixed.horizontal,
	})

	local function update_battery(w)
		awful.spawn.easy_async_with_shell("~/.config/awesome/scripts/battery.sh", function(stdout)
			w:get_children_by_id("txt")[1]:set_text(" bat: " .. stdout)
		end)
	end

	gears.timer({
		timeout = 60,
		call_now = true,
		autostart = true,
		callback = function()
			update_battery(widget)
		end,
	})

	return widget
end

return battery_widget
