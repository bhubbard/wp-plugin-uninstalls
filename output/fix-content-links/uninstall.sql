-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_replacements';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_notice';

