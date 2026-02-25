-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clafc_custom_css', 'abl_clafc_version', 'admincssmu_custom_css');

