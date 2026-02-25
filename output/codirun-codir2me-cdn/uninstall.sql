-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('codir2me_debug_mode', 'codir2me_reprocessing_status', 'codir2me_classes_check_version', 'codir2me_is_cdn_active', 'codir2me_assets_handler_initialized', 'codir2me_reprocessing_image_ids', 'codir2me_pending_files', 'codir2me_upload_status', 'codir2me_upload_error', 'codir2me_pending_images', 'codir2me_images_upload_status', 'codir2me_images_upload_error', 'codir2me_uploaded_thumbnails_by_size', 'codir2me_cached_thumbnails_info', 'codir2me_assets_need_aws_sdk', 'codir2me_assets_need_asyncaws_sdk', 'codir2me_thumbnail_option', 'codir2me_selected_thumbnails', 'codir2me_auto_upload_static', 'codir2me_auto_upload_frequency', 'codir2me_upload_on_update', 'codir2me_enable_versioning', 'codir2me_file_upload_timestamps', 'codir2me_auto_upload_thumbnails', 'codir2me_access_key', 'codir2me_is_images_cdn_active', 'CODIR2ME_CDN_VERSION', 'codir2me_clean_logs_on_deactivate', 'codir2me_pending_resend_paths', 'codir2me_uploaded_files', 'codir2me_upload_timestamps', 'codir2me_assets_version', 'codir2me_resend_files_list', 'codir2me_resend_position', 'codir2me_cdn_url', 'codir2me_secret_key', 'codir2me_bucket', 'codir2me_endpoint', 'codir2me_batch_size', 'codir2me_images_batch_size', 'codir2me_image_optimization_options', 'codir2me_disable_cdn_admin', 'codir2me_all_images_sent', 'codir2me_original_images_count', 'codir2me_missing_images_count', 'codir2me_auto_upload_page_assets', 'codir2me_total_images_found', 'codir2me_total_images_pending', 'codir2me_thumbnail_images_count', 'codir2me_uploaded_images');
DELETE FROM wp_options WHERE option_name IN ('codir2me_format_webp_enabled', 'codir2me_format_avif_enabled', 'codir2me_delete_in_progress', 'codir2me_items_to_delete', 'codir2me_delete_status', 'codir2me_broken_files', 'codir2me_file_versions', 'codir2me_format_order', 'codir2me_enable_optimization', 'codir2me_need_cache_clear');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE 'codir2me_disabled_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file');

