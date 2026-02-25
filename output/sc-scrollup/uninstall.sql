-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scupSettings_icon_size', 'scupSettings_speed', 'scupSettings_width', 'scupSettings_height', 'scupSettings_distance_right', 'scupSettings_distance_bottom', 'scupSettings_background', 'scupSettings_icon_color', 'scupSettings_icon');

