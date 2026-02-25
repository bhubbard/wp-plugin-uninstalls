-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('view_wp_error_log_no_lines', 'view_wp_error_log_log');

