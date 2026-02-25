-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wpsl_notices', 'wpsl_settings', 'wpsl_valid_server_key', 'wpsl_flush_rewrite', 'wpsl_delete_transient', 'wpsl_legacy_support', 'wpsl_version', 'wpsl_convert_cpt', 'update_plugins', 'wpsl_addons');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'wpsl_autoload_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsl_disable_wp_rocket_warning', 'dismissed_wp_pointers', 'wpsl_country_iso', 'wpsl_lat', 'wpsl_lng', 'wpsl_hours', 'wpsl_address', 'wpsl_address2', 'wpsl_country', 'wpsl_phone', 'wpsl_fax', 'wpsl_email', 'wpsl_url', 'wpsl_city', 'wpsl_state', 'wpsl_zip', 'wpsl_disable_location_warning', 'wpsl_stores_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsl_disable_wp_rocket_warning', 'dismissed_wp_pointers', 'wpsl_country_iso', 'wpsl_lat', 'wpsl_lng', 'wpsl_hours', 'wpsl_address', 'wpsl_address2', 'wpsl_country', 'wpsl_phone', 'wpsl_fax', 'wpsl_email', 'wpsl_url', 'wpsl_city', 'wpsl_state', 'wpsl_zip', 'wpsl_disable_location_warning', 'wpsl_stores_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsl_disable_wp_rocket_warning', 'dismissed_wp_pointers', 'wpsl_country_iso', 'wpsl_lat', 'wpsl_lng', 'wpsl_hours', 'wpsl_address', 'wpsl_address2', 'wpsl_country', 'wpsl_phone', 'wpsl_fax', 'wpsl_email', 'wpsl_url', 'wpsl_city', 'wpsl_state', 'wpsl_zip', 'wpsl_disable_location_warning', 'wpsl_stores_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsl_disable_wp_rocket_warning', 'dismissed_wp_pointers', 'wpsl_country_iso', 'wpsl_lat', 'wpsl_lng', 'wpsl_hours', 'wpsl_address', 'wpsl_address2', 'wpsl_country', 'wpsl_phone', 'wpsl_fax', 'wpsl_email', 'wpsl_url', 'wpsl_city', 'wpsl_state', 'wpsl_zip', 'wpsl_disable_location_warning', 'wpsl_stores_per_page');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_warning';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_warning';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_warning';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_warning';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpsl_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpsl_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpsl_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpsl_%';

