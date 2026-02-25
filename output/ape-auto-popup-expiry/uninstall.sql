-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myoption', 'popup_window_width', 'popup_window_height', 'popup_window_date', 'popup_window_image', 'popup_window_fadeout', 'popup_window_link', 'popup_window_target', 'popup_window_color', 'popup_window_radius', 'popup_window_border_w', 'notification_text', 'notification_width', 'notification_height', 'notification_date', 'notification_fadeout', 'notification_bkg_color', 'notification_font_color', 'notification_radius', 'notification_margin', 'notification_close_color', 'notification_position_top', 'notification_position_right', 'notification_position_left', 'notification_position_bottom', 'myselect', 'myselectout');

