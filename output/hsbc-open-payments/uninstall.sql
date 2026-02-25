-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hsbc_success_msg', 'hsbc_error_msg');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

