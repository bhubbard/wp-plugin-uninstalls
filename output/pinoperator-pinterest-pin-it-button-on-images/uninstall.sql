-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pppiboi_enable_plugin', 'pppiboi_show_on_devices', 'pppiboi_button_design', 'pppiboi_button_position', 'pppiboi_button_size', 'pppiboi_button_type', 'pppiboi_show_in_locations', 'pppiboi_exclude_urls', 'pppiboi_exclude_mode');

