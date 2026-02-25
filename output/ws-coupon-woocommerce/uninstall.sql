-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ws_show_popup', 'ws_popup_title', 'ws_hide_after', 'ws_popup_coupon', 'ws_popup_background', 'ws_popup_border_color', 'ws_popup_font_color');

