-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_check-variables_', 'QMCV_options');
DELETE FROM wp_options WHERE option_name LIKE 'WP_Admin_Page_Version-%';
DELETE FROM wp_options WHERE option_name LIKE 'WP_Admin_Page_Settings-%';
DELETE FROM wp_options WHERE option_name LIKE 'WP_Admin_Page_Plugin-%';
DELETE FROM wp_options WHERE option_name LIKE 'WP_Admin_Page_Plugin%';
DELETE FROM wp_options WHERE option_name LIKE '%_';

