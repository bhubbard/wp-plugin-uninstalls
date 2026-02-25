-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uptime_robot_option_show_id', 'uptime_robot_option_show_type', 'uptime_robot_option_show_ratio', 'uptime_robot_option_api_key');

