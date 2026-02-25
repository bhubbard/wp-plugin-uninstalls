-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geo_mashup_db_version', 'geo_mashup_activation_log', 'geo_locations', 'google_api_key', 'geo_mashup_options', 'geo_mashup_temp_kml_url', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'gm_uploaded_kml_url', 'geo_mashup_test', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'gmm%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geo_longitude', 'geo_latitude', 'geocoding_error', 'geo_date', 'geo_address', '_geo_converted', 'geo_mashup_save_location_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('geo_longitude', 'geo_latitude', 'geocoding_error', 'geo_date', 'geo_address', '_geo_converted', 'geo_mashup_save_location_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('geo_longitude', 'geo_latitude', 'geocoding_error', 'geo_date', 'geo_address', '_geo_converted', 'geo_mashup_save_location_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geo_longitude', 'geo_latitude', 'geocoding_error', 'geo_date', 'geo_address', '_geo_converted', 'geo_mashup_save_location_error');

