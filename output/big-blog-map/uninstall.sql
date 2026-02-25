-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbm_options', 'my_plugin_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bbm_map_page', 'latitude', 'longitude', '_bbm_location_url', 'bbm_latitude', 'bbm_longitude', 'bbm_include');
DELETE FROM wp_usermeta WHERE meta_key IN ('bbm_map_page', 'latitude', 'longitude', '_bbm_location_url', 'bbm_latitude', 'bbm_longitude', 'bbm_include');
DELETE FROM wp_termmeta WHERE meta_key IN ('bbm_map_page', 'latitude', 'longitude', '_bbm_location_url', 'bbm_latitude', 'bbm_longitude', 'bbm_include');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bbm_map_page', 'latitude', 'longitude', '_bbm_location_url', 'bbm_latitude', 'bbm_longitude', 'bbm_include');

