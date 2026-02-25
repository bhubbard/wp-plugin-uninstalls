-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stky_custom_css', 'stky_db_version', 'stky_admin_success_message', 'stky_admin_error_message');

