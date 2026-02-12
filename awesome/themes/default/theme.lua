---------------------------
-- Everforest Dark Soft Theme for AwesomeWM --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font = "sans 8"

-- Everforest Dark Soft palette
-- background:  #2d353b
-- bg_hard:     #3c474d
-- bg_dim:      #323d43
-- bg1:         #404c51
-- bg2:         #465258
-- bg3:         #5f6d67
-- fg:          #d3c6aa
-- fg_dim:      #859289
-- fg_subtle:   #9da9a0
-- green:       #a7c080
-- red:         #e67e80
-- yellow:      #dbbc7f
-- blue:        #7fbbb3
-- purple:      #d699b6
-- cyan:        #83c092
-- orange:      #e69875

theme.bg_normal     = "#2d353b"
theme.bg_focus      = "#3c474d"
theme.bg_urgent     = "#e67e80"
theme.bg_minimize   = "#323d43"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#d3c6aa"
theme.fg_focus      = "#a7c080"
theme.fg_urgent     = "#2d353b"
theme.fg_minimize   = "#859289"

theme.useless_gap   = dpi(8)
theme.border_width  = dpi(1)
theme.border_normal = "#404c51"
theme.border_focus  = "#a7c080"
theme.border_marked = "#e67e80"

-- Taglist
theme.taglist_bg_focus    = "#3c474d"
theme.taglist_fg_focus    = "#a7c080"
theme.taglist_bg_occupied = "#323d43"
theme.taglist_fg_occupied = "#d3c6aa"
theme.taglist_bg_empty    = "#2d353b"
theme.taglist_fg_empty    = "#5f6d67"
theme.taglist_bg_urgent   = "#e67e80"
theme.taglist_fg_urgent   = "#2d353b"

-- Tasklist
theme.tasklist_bg_focus   = "#323d43"
theme.tasklist_fg_focus   = "#d3c6aa"
theme.tasklist_bg_normal  = "#2d353b"
theme.tasklist_fg_normal  = "#859289"
theme.tasklist_bg_urgent  = "#e67e80"
theme.tasklist_fg_urgent  = "#2d353b"
theme.tasklist_disable_icon = true

-- Titlebar
theme.titlebar_bg_normal  = "#323d43"
theme.titlebar_bg_focus   = "#3c474d"
theme.titlebar_fg_normal  = "#859289"
theme.titlebar_fg_focus   = "#d3c6aa"

-- Tooltip
theme.tooltip_bg          = "#3c474d"
theme.tooltip_fg          = "#d3c6aa"
theme.tooltip_border_color = "#5f6d67"
theme.tooltip_border_width = dpi(1)

-- Prompt
theme.prompt_fg           = "#a7c080"
theme.prompt_bg           = "#2d353b"
theme.prompt_fg_cursor    = "#2d353b"
theme.prompt_bg_cursor    = "#d3c6aa"

-- Hotkeys popup
theme.hotkeys_bg          = "#2d353b"
theme.hotkeys_fg          = "#d3c6aa"
theme.hotkeys_border_color = "#5f6d67"
theme.hotkeys_modifiers_fg = "#7fbbb3"
theme.hotkeys_label_bg    = "#323d43"
theme.hotkeys_label_fg    = "#a7c080"

-- Notifications
theme.notification_bg           = "#3c474d"
theme.notification_fg           = "#d3c6aa"
theme.notification_border_color = "#a7c080"
theme.notification_border_width = dpi(1)

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel   = theme_assets.taglist_squares_sel(taglist_square_size, theme.fg_focus)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)

-- Menu
theme.menu_submenu_icon = themes_path .. "default/submenu.png"
theme.menu_height       = dpi(15)
theme.menu_width        = dpi(100)
theme.menu_bg_normal    = "#2d353b"
theme.menu_fg_normal    = "#d3c6aa"
theme.menu_bg_focus     = "#a7c080"
theme.menu_fg_focus     = "#2d353b"
theme.menu_border_color = "#404c51"
theme.menu_border_width = dpi(1)

-- Define the image to load
theme.titlebar_close_button_normal = themes_path .. "default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path .. "default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path .. "default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path .. "default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active   = themes_path .. "default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active    = themes_path .. "default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path .. "default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path .. "default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active   = themes_path .. "default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active    = themes_path .. "default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path .. "default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path .. "default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active   = themes_path .. "default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active    = themes_path .. "default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path .. "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = themes_path .. "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = themes_path .. "default/titlebar/maximized_focus_active.png"

theme.wallpaper = "/home/umar/Downloads/backiee-158458-landscape.jpg"

-- Layout icons
theme.layout_fairh      = themes_path .. "default/layouts/fairhw.png"
theme.layout_fairv      = themes_path .. "default/layouts/fairvw.png"
theme.layout_floating   = themes_path .. "default/layouts/floatingw.png"
theme.layout_magnifier  = themes_path .. "default/layouts/magnifierw.png"
theme.layout_max        = themes_path .. "default/layouts/maxw.png"
theme.layout_fullscreen = themes_path .. "default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path .. "default/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path .. "default/layouts/tileleftw.png"
theme.layout_tile       = themes_path .. "default/layouts/tilew.png"
theme.layout_tiletop    = themes_path .. "default/layouts/tiletopw.png"
theme.layout_spiral     = themes_path .. "default/layouts/spiralw.png"
theme.layout_dwindle    = themes_path .. "default/layouts/dwindlew.png"
theme.layout_cornernw   = themes_path .. "default/layouts/cornernww.png"
theme.layout_cornerne   = themes_path .. "default/layouts/cornernew.png"
theme.layout_cornersw   = themes_path .. "default/layouts/cornersww.png"
theme.layout_cornerse   = themes_path .. "default/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(theme.menu_height, theme.bg_focus, theme.fg_focus)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80