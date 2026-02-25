-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popup_window_width', 'popup_window_height', 'popup_window_top', 'popup_window_left', 'popup_scrollbar', 'popup_window_toolbar', 'popup_window_location');

