-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_php_error_log';
DELETE FROM wp_options WHERE option_name LIKE '%_js_error_log';

