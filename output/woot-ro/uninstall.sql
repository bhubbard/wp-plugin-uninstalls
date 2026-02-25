-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woot_settings', 'woot_deprecation_notice_dismissed', 'woot_plugin_version', 'woot_services', 'woot_couriers', 'woot_countries');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woot_selected_location', 'woot_selected_location_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('woot_selected_location', 'woot_selected_location_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('woot_selected_location', 'woot_selected_location_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woot_selected_location', 'woot_selected_location_method');

