-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mainwp_pro_reports_my_custom_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_APIManAdder';

