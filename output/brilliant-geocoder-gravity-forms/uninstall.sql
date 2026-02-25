-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_geometa_version', 'wp_geometa_db_version', 'wp_geometa_capabilities');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('myplugin_lat', 'geo_longitude', 'wpgeometa_test', 'geo_latitude', 'myplugin_lng');
DELETE FROM wp_usermeta WHERE meta_key IN ('myplugin_lat', 'geo_longitude', 'wpgeometa_test', 'geo_latitude', 'myplugin_lng');
DELETE FROM wp_termmeta WHERE meta_key IN ('myplugin_lat', 'geo_longitude', 'wpgeometa_test', 'geo_latitude', 'myplugin_lng');
DELETE FROM wp_commentmeta WHERE meta_key IN ('myplugin_lat', 'geo_longitude', 'wpgeometa_test', 'geo_latitude', 'myplugin_lng');

