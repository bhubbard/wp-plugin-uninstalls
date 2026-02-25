-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wps_cleaner_alert', 'wpscleaner_admin_footer_text_rated', 'wps_cleaner_total_posts', 'wps_cleaner_total_postmeta', 'wps_cleaner_dir_size', 'wps_cleaner_img_count', 'wps_plugins_adds');
DELETE FROM wp_options WHERE option_name LIKE 'default_%';
DELETE FROM wp_options WHERE option_name LIKE 'wps_cleaner_dir_size_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_context', '_fl_builder_data', '_fl_builder_draft', '_elementor_data', '_product_image_gallery', '_thumbnail_id', 'wps_cleaner_media_use');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_context', '_fl_builder_data', '_fl_builder_draft', '_elementor_data', '_product_image_gallery', '_thumbnail_id', 'wps_cleaner_media_use');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_context', '_fl_builder_data', '_fl_builder_draft', '_elementor_data', '_product_image_gallery', '_thumbnail_id', 'wps_cleaner_media_use');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_context', '_fl_builder_data', '_fl_builder_draft', '_elementor_data', '_product_image_gallery', '_thumbnail_id', 'wps_cleaner_media_use');

