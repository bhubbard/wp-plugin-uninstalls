-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('store_rules_module_data', 'active_sitewide_plugins', 'wcs_deactivated_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcs_min_max_rules');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcs_min_max_rules');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcs_min_max_rules');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcs_min_max_rules');

