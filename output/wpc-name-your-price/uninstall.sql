-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woonp_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woonp_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woonp_status', '_woonp_type', '_woonp_min', '_woonp_max', '_woonp_step', '_woonp_values');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woonp_status', '_woonp_type', '_woonp_min', '_woonp_max', '_woonp_step', '_woonp_values');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woonp_status', '_woonp_type', '_woonp_min', '_woonp_max', '_woonp_step', '_woonp_values');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woonp_status', '_woonp_type', '_woonp_min', '_woonp_max', '_woonp_step', '_woonp_values');

