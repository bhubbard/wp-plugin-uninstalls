-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('anwp_pg_plugin_settings', 'anwp_pg_elementor_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_anwp_extras_video_source', '_anwp_extras_video_id', '_anwp_extras_gallery_images', '_anwp_extras_category_color', '_anwp_pg_category_color', '_anwp_pg_category_text_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_anwp_extras_video_source', '_anwp_extras_video_id', '_anwp_extras_gallery_images', '_anwp_extras_category_color', '_anwp_pg_category_color', '_anwp_pg_category_text_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_anwp_extras_video_source', '_anwp_extras_video_id', '_anwp_extras_gallery_images', '_anwp_extras_category_color', '_anwp_pg_category_color', '_anwp_pg_category_text_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_anwp_extras_video_source', '_anwp_extras_video_id', '_anwp_extras_gallery_images', '_anwp_extras_category_color', '_anwp_pg_category_color', '_anwp_pg_category_text_color');

