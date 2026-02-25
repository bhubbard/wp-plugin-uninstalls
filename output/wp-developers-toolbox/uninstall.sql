-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('developer_toolbox_options_debug_mode', 'developer_toolbox_options_error_log', 'developer_toolbox_options_admin_bar_toggle', 'developer_toolbox_options_admin_only', 'developer_toolbox_options_ip_only');
DELETE FROM wp_options WHERE option_name LIKE '%_debug_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_error_log';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_bar_toggle';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_only';
DELETE FROM wp_options WHERE option_name LIKE '%_ip_only';

