local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")

local volume_widget = {}

function volume_widget.new()
	local widget = wibox.widget({
		{
			id = "txt",
			widget = wibox.widget.textbox,
		},
		layout = wibox.layout.fixed.horizontal,
	})

	local function update_volume(w)
		awful.spawn.easy_async_with_shell("~/.config/awesome/scripts/volume.sh", function(stdout)
			local volume, mute = string.match(stdout, "(%d+)%|(%w+)")
			volume = tonumber(volume)
			local text = " vol: " .. volume .. "%"
			if mute == "mute" then
				text = text .. " (M)"
			end
			w:get_children_by_id("txt")[1]:set_text(text)
		end)
	end

	gears.timer({
		timeout = 60,
		call_now = true,
		autostart = true,
		callback = function()
			update_volume(widget)
		end,
	})

	return widget
end

return volume_widget
