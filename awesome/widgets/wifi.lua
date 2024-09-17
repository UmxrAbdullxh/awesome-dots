local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")

local wifi_widget = {}

function wifi_widget.new()
	local widget = wibox.widget({
		{
			id = "txt",
			widget = wibox.widget.textbox,
		},
		layout = wibox.layout.fixed.horizontal,
	})

	local function update_wifi(w)
		awful.spawn.easy_async_with_shell("~/.config/awesome/scripts/wifi.sh", function(stdout)
			local ssid, signal = stdout:match("(.+)|(%d+)")
			signal = tonumber(signal)
			local text = ""
			if ssid == "No WiFi" then
				text = text .. "No adapter"
			elseif ssid == "Disconnected" then
				text = text .. "Disconnected"
			else
				text = text .. ssid .. " (" .. signal .. "%)"
			end
			w:get_children_by_id("txt")[1]:set_text(text)
		end)
	end

	gears.timer({
		timeout = 30, -- Update every 5 seconds
		call_now = true,
		autostart = true,
		callback = function()
			update_wifi(widget)
		end,
	})

	return widget
end

return wifi_widget
