-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_places_settings', 'WP_Places_Google_Attr_Setting_check', 'wp_places_legacy', 'WP_Places_Google_Id_Setting', 'WP_Places_CSS', 'WP_Places_Display_Div');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_WP_Places_meta_Google_response', '_wp_places', '_WP_Places_meta_value_lat', '_WP_Places_meta_value_lon', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_WP_Places_meta_Google_response', '_wp_places', '_WP_Places_meta_value_lat', '_WP_Places_meta_value_lon', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_WP_Places_meta_Google_response', '_wp_places', '_WP_Places_meta_value_lat', '_WP_Places_meta_value_lon', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_WP_Places_meta_Google_response', '_wp_places', '_WP_Places_meta_value_lat', '_WP_Places_meta_value_lon', '_wp_page_template');

