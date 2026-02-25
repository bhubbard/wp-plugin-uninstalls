-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fssl-setting-zoom', 'fssl-setting-lat', 'fssl-setting-long', 'fssl-setting-icon');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fssl_address', '_fssl_city', '_fssl_state', '_fssl_zip', '_fssl_country', '_fssl_lat', '_fssl_long', '_fssl_short_des', '_fssl_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fssl_address', '_fssl_city', '_fssl_state', '_fssl_zip', '_fssl_country', '_fssl_lat', '_fssl_long', '_fssl_short_des', '_fssl_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fssl_address', '_fssl_city', '_fssl_state', '_fssl_zip', '_fssl_country', '_fssl_lat', '_fssl_long', '_fssl_short_des', '_fssl_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fssl_address', '_fssl_city', '_fssl_state', '_fssl_zip', '_fssl_country', '_fssl_lat', '_fssl_long', '_fssl_short_des', '_fssl_link');

