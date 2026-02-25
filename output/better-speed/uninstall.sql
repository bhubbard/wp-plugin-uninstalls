-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('better_speed_plugin_loaded', 'better_speed_setup_theme', 'better-speed-settings');

