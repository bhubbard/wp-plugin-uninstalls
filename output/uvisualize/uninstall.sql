-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('values', 'uvis_default_basemaps', 'uvis_basemaps', 'uvis_playlist_post_type_name_singular', 'uvis_playlist_post_type_name_plural', 'uvis_playlist_post_type', 'uvis_playlist_post_meta', 'uvis_playlist_dropdown_number', 'uvis_visualization_post_type', 'uvis_visualization_post_type_name_plural', 'uvis_playlist_enable_dropdown', 'uvis_visualization_post_type_name_singular', 'uvis_convert_shortcodes', 'uvis_active_modules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uvis_playlist_items', 'uvis_module', 'uvis_config');
DELETE FROM wp_usermeta WHERE meta_key IN ('uvis_playlist_items', 'uvis_module', 'uvis_config');
DELETE FROM wp_termmeta WHERE meta_key IN ('uvis_playlist_items', 'uvis_module', 'uvis_config');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uvis_playlist_items', 'uvis_module', 'uvis_config');

