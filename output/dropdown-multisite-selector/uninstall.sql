-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dms_multisite', 'dms_sorting', 'dms_placeholder', 'dms_select_name', 'dms_options');

