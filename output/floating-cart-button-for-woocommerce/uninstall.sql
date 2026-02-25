-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fcbw_icon_color', 'fcbw_bg_color', 'fcbw_position');

