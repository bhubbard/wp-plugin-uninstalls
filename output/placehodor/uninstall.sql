-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lnjph_install', 'lnjph_install_date', 'lnjph_uninstall_date', 'lnjph_plugin_version', 'lnjph_default_post_thumbnail', 'lnjph_settings_update', 'lnjph_sub_mode', 'lnjph_custom_content_solo', 'placehold_co_font', 'placehold_co_text', 'placehold_co_color', 'placehold_co_bgcolor', 'placeimg_com_mode', 'placeimg_com_cat', 'picsum_photos_mode', 'doodleipsum_mode', 'doodleipsum_bgcolor', 'lnjph_sub_thumbnail', 'placehodor_sub_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id');

