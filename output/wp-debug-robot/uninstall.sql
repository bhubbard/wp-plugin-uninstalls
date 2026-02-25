-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('debug_robot_host', 'debug_robot_port', 'debug_robot_target', 'debug_robot_server');

