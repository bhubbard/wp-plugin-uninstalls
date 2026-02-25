-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tdsc_icon_size', 'tdsc_background_color', 'tdsc_hover_color', 'tdsc_enable_down', 'tdsc_enable_top', 'tdsc_position', 'tdsc_top_button_icon_url', 'tdsc_down_button_icon_url', 'tdsc_ackground_color', 'tdsc-scroll-activation-notice');

