local awful = require("awful")
local naughty = require("naughty")
local gears = require("gears")
local beautiful = require("beautiful")

-- Function to get battery percentage
local function get_battery_percentage()
	local file = io.open("/sys/class/power_supply/BAT0/capacity", "r")
	if not file then
		return nil
	end
	local capacity = file:read("*n")
	file:close()
	return capacity
end

-- Function to create a rounded rectangle shape
local function rounded_rect(radius)
	return function(cr, width, height)
		gears.shape.rounded_rect(cr, width, height, radius)
	end
end

-- Function to check battery and show notification
local function check_battery()
	local battery_percentage = get_battery_percentage()
	if battery_percentage and battery_percentage <= 20 then
		naughty.notify({
			title = "Houston, we have a problem",
			text = string.format("Battery level is critically low: %d%%", battery_percentage),
			timeout = 0, -- The notification will stay until dismissed
			icon = "/home/umar/Downloads/donatello-icon.png",
			bg = "#000000", -- Red background
			fg = "#FFFFFF", -- White text
			border_color = "#535d6c", -- Gold border
			border_width = 1,
			shape = rounded_rect(10), -- Rounded corners
			position = "top_right",
			font = "sans 12", -- Adjust font as needed
			margin = 10,
			width = 300,
			icon_size = 96,
		})
	end
end

-- Set up a timer to check battery every 5 minutes
local battery_timer = timer({ timeout = 300 })
battery_timer:connect_signal("timeout", check_battery)
battery_timer:start()

-- Initial check
check_battery()
