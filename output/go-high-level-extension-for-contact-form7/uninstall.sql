-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ghlcf7_locationId', 'ghlcf7_name_fields', 'ghlcf7_email_field', 'ghlcf7_phne_field', 'ghlcf7-global-tag-names', 'ghlcf7_access_token', 'ghlcf7_client_id', 'ghlcf7_client_secret', 'ghlcf7_refresh_token', 'ghlcf7_loc_name', 'ghlcf7_location_connected', 'ghlcf7_access_token_valid', 'ghlcf7_location_tags', 'ghlcf7_location_wokflow');
DELETE FROM wp_options WHERE option_name LIKE 'ghlcf7_checkbox_%';
DELETE FROM wp_options WHERE option_name LIKE 'ghlcf7_tag_%';

