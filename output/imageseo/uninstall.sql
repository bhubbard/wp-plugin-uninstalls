-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imageseo_version', 'imageseo_get_total_images', 'imageseo_get_number_image_non_optimize_alt', 'imageseo_bulk_optimizer_last_report', 'imageseo_bulk_image_data', 'imageseo_bulk_optimizer_status', 'imageseo_link_rename_files', 'imageseo_process_query_count_images', '_imageseo_filename_social_process', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_old_wp_attachment_metadata', '_imageseo_data_pin_description', '_imageseo_data_pin_url', '_imageseo_data_pin_id', '_imageseo_data_pin_media', '_imageseo_rename_file_backup', '_imageseo_social_media_image_is_generate', '_wp_attachment_image_alt', '_imageseo_new_filename', '_old_wp_attached_file', '_seopress_analysis_target_kw');
DELETE FROM wp_usermeta WHERE meta_key IN ('_old_wp_attachment_metadata', '_imageseo_data_pin_description', '_imageseo_data_pin_url', '_imageseo_data_pin_id', '_imageseo_data_pin_media', '_imageseo_rename_file_backup', '_imageseo_social_media_image_is_generate', '_wp_attachment_image_alt', '_imageseo_new_filename', '_old_wp_attached_file', '_seopress_analysis_target_kw');
DELETE FROM wp_termmeta WHERE meta_key IN ('_old_wp_attachment_metadata', '_imageseo_data_pin_description', '_imageseo_data_pin_url', '_imageseo_data_pin_id', '_imageseo_data_pin_media', '_imageseo_rename_file_backup', '_imageseo_social_media_image_is_generate', '_wp_attachment_image_alt', '_imageseo_new_filename', '_old_wp_attached_file', '_seopress_analysis_target_kw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_old_wp_attachment_metadata', '_imageseo_data_pin_description', '_imageseo_data_pin_url', '_imageseo_data_pin_id', '_imageseo_data_pin_media', '_imageseo_rename_file_backup', '_imageseo_social_media_image_is_generate', '_wp_attachment_image_alt', '_imageseo_new_filename', '_old_wp_attached_file', '_seopress_analysis_target_kw');

