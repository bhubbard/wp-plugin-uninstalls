-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sirsc_adon_images_seo_settings', 'sirsc_adons_is_bulk_rename', 'sirsc_use_custom_image_sizes', 'sirsc_adon_uploads_files_count', 'sirsc_settings', 'sirsc_user_custom_rules', 'sirsc_user_custom_rules_usable', 'sirsc_monitor_errors', 'sirsc_settings_updated', 'sirsc_types_options', 'sirsc_admin_featured_size', 'sirsc_adons_list', 'wp_attachment_pages_enabled', 'sirsc_adon_uploads_folder_summary');
DELETE FROM wp_options WHERE option_name LIKE '%_proc_dir';
DELETE FROM wp_options WHERE option_name LIKE '%_proc_item';
DELETE FROM wp_options WHERE option_name LIKE '%_last_proc';
DELETE FROM wp_options WHERE option_name LIKE '%_proc_time';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE 'sirsc_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'sirsc_settings%';
DELETE FROM wp_options WHERE option_name LIKE 'sirsc-adon-check-%';
DELETE FROM wp_options WHERE option_name LIKE '%_adons_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_seoimg_initial_filename', '_seoimg_initial_filepath', '_wp_attachment_image_alt', '_wp_attached_file', '_thumbnail_id', '_product_image_gallery', '_wp_attachment_metadata', '_sirsc_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_seoimg_initial_filename', '_seoimg_initial_filepath', '_wp_attachment_image_alt', '_wp_attached_file', '_thumbnail_id', '_product_image_gallery', '_wp_attachment_metadata', '_sirsc_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_seoimg_initial_filename', '_seoimg_initial_filepath', '_wp_attachment_image_alt', '_wp_attached_file', '_thumbnail_id', '_product_image_gallery', '_wp_attachment_metadata', '_sirsc_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_seoimg_initial_filename', '_seoimg_initial_filepath', '_wp_attachment_image_alt', '_wp_attached_file', '_thumbnail_id', '_product_image_gallery', '_wp_attachment_metadata', '_sirsc_attachment_metadata');

