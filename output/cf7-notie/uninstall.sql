-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_success_bg';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_bg';
DELETE FROM wp_options WHERE option_name LIKE '%_error_bg';

