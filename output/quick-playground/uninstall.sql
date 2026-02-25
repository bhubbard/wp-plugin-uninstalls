-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qckply_profiles', 'qckply_profile', 'qckply_sync_code', 'qckply_sync_origin', 'qckply_upload_image_path', 'qckply_upload_image_url', 'qckply_upload_image_path_64', 'qckply_upload_image_resized_result', 'qckply_upload_image_resized_error', 'qckply_disable_image_upload', 'qckply_top_ids', 'qckply_image_uploads', 'show_playground_prompt_keys', 'qckply_messages', 'qckply_upload_attachment_id', 'qckply_upload_metadata', 'qckply_upload_basename', 'qckply_upload_image_usort_start', 'qckply_upload_image_usort_done', 'qckply_upload_image_path_size_array', 'qckply_upload_image_path_size_test', 'qckply_upload_image_path_scaled', 'qckply_upload_image_base64', 'qckply_upload_image_raw_result', 'qckply_upload_image_result', 'qckply_upload_image_result_error', 'qckply_upload_image_error_message', 'qckply_save_image_responsedata', 'qckply_site_dir', 'origin_stylesheet', 'qckply_origin_directories', 'qckply_updated_options', 'qckply_dashboard_home', 'qckply_no_cache', 'qckply_sync_date', 'is_qckply_clone', 'qckply_downloaded', 'qckply_clone_posts_log', 'qckply_pages_cloned', 'quickplay_clone_settings_log', 'qckply_clone_custom_log', 'qckply_clone_images_log', 'qckply_clone_images', 'qckply_next_image', 'qckply_saved_images', 'playground_imported', 'qckply_landing', 'use_playground', 'qckply_directories', 'qckply_updated_posts');
DELETE FROM wp_options WHERE option_name IN ('qckply_updated_postmeta', 'cache_created', 'qckply_clone_posts_json', 'qckply_clone_posts_modified', 'qckply_clone_settings_log', 'qckply_clone_settings_json', 'qckply_clone_custom_json', 'qckply_is_demo', 'qckply_hits', 'qckply_uploaded_images', 'site_logo', 'qckply_get_all_attachments', 'qckply_image_to_upload', 'qckply_image_to_upload resize check', 'qckply_image_to_upload resized', 'qckply_image_to_upload full size or scaled', 'qckply_welcome_shown', 'qckply_messages_updated', 'qckply_logo', 'qckply_icon', 'qckply_images_retry', 'invalid_sync_code', 'qckply_last_image_uploaded', 'qckply_sideload_url', 'qckply_sideload_id', 'qckply_key_pages_html', 'qckply_key_pages', 'key_images');
DELETE FROM wp_options WHERE option_name LIKE 'qckply_ids_%';
DELETE FROM wp_options WHERE option_name LIKE 'qckply_blueprint_%';
DELETE FROM wp_options WHERE option_name LIKE 'quickplay_clone_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'qckply_display_%';
DELETE FROM wp_options WHERE option_name LIKE 'qckply_profile_images_%';
DELETE FROM wp_options WHERE option_name LIKE 'qckply_disable_sync_%';
DELETE FROM wp_options WHERE option_name LIKE 'qckply_sync_code_%';
DELETE FROM wp_options WHERE option_name LIKE 'json_steps_%';
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';
DELETE FROM wp_options WHERE option_name LIKE 'qckply_landing_page_%';
DELETE FROM wp_options WHERE option_name LIKE 'qckply_featured_posts_%';
DELETE FROM wp_options WHERE option_name LIKE 'qckply_clone_posts_%';
DELETE FROM wp_options WHERE option_name LIKE 'qckply_image_to_upload resize meta sizes %';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qckply_origin_sideload_metadata', 'tm_member_welcome', 'first_name', 'last_name', '_thumbnail_id', 'attachment_updated');
DELETE FROM wp_usermeta WHERE meta_key IN ('qckply_origin_sideload_metadata', 'tm_member_welcome', 'first_name', 'last_name', '_thumbnail_id', 'attachment_updated');
DELETE FROM wp_termmeta WHERE meta_key IN ('qckply_origin_sideload_metadata', 'tm_member_welcome', 'first_name', 'last_name', '_thumbnail_id', 'attachment_updated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qckply_origin_sideload_metadata', 'tm_member_welcome', 'first_name', 'last_name', '_thumbnail_id', 'attachment_updated');

