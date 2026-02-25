-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_type_rules_flushed_gl_js_maps', 'mapbox_gl_js_access_token', 'mapbox_gl_js_secret_access_token', 'mapbox_gl_js_username', 'wp_mapbox_gl_js_upgrade');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_mapbox_gl_js_map_object', 'wp_mapbox_gl_js_hidden_in_post', 'wp_mapbox_gl_js_dataset_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_mapbox_gl_js_map_object', 'wp_mapbox_gl_js_hidden_in_post', 'wp_mapbox_gl_js_dataset_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_mapbox_gl_js_map_object', 'wp_mapbox_gl_js_hidden_in_post', 'wp_mapbox_gl_js_dataset_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_mapbox_gl_js_map_object', 'wp_mapbox_gl_js_hidden_in_post', 'wp_mapbox_gl_js_dataset_id');

