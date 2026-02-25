-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ws_custom_scrollbar_show', 'ws_custom_scrollbar_width', 'ws_custom_scrollbar_bgcolor', 'ws_custom_scrollbar_border_color', 'ws_custom_scrollbar_border_radius', 'ws_custom_scrollbar_speed', 'ws_custom_scrollbar_opacity', 'ws_custom_scrollbar_autohide', 'ws_custom_scrollbar_hidecursordelay');

