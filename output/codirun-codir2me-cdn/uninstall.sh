#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'codir2me_debug_mode'
wp option delete 'codir2me_reprocessing_status'
wp option delete 'codir2me_classes_check_version'
wp option delete 'codir2me_is_cdn_active'
wp option delete 'codir2me_assets_handler_initialized'
wp option delete 'codir2me_reprocessing_image_ids'
wp option delete 'codir2me_pending_files'
wp option delete 'codir2me_upload_status'
wp option delete 'codir2me_upload_error'
wp option delete 'codir2me_pending_images'
wp option delete 'codir2me_images_upload_status'
wp option delete 'codir2me_images_upload_error'
wp option delete 'codir2me_uploaded_thumbnails_by_size'
wp option delete 'codir2me_cached_thumbnails_info'
wp option delete 'codir2me_assets_need_aws_sdk'
wp option delete 'codir2me_assets_need_asyncaws_sdk'
wp option delete 'codir2me_thumbnail_option'
wp option delete 'codir2me_selected_thumbnails'
wp option delete 'codir2me_auto_upload_static'
wp option delete 'codir2me_auto_upload_frequency'
wp option delete 'codir2me_upload_on_update'
wp option delete 'codir2me_enable_versioning'
wp option delete 'codir2me_file_upload_timestamps'
wp option delete 'codir2me_auto_upload_thumbnails'
wp option delete 'codir2me_access_key'
wp option delete 'codir2me_is_images_cdn_active'
wp option delete 'CODIR2ME_CDN_VERSION'
wp option delete 'codir2me_clean_logs_on_deactivate'
wp option delete 'codir2me_pending_resend_paths'
wp option delete 'codir2me_uploaded_files'
wp option delete 'codir2me_upload_timestamps'
wp option delete 'codir2me_assets_version'
wp option delete 'codir2me_resend_files_list'
wp option delete 'codir2me_resend_position'
wp option delete 'codir2me_cdn_url'
wp option delete 'codir2me_secret_key'
wp option delete 'codir2me_bucket'
wp option delete 'codir2me_endpoint'
wp option delete 'codir2me_batch_size'
wp option delete 'codir2me_images_batch_size'
wp option delete 'codir2me_image_optimization_options'
wp option delete 'codir2me_disable_cdn_admin'
wp option delete 'codir2me_all_images_sent'
wp option delete 'codir2me_original_images_count'
wp option delete 'codir2me_missing_images_count'
wp option delete 'codir2me_auto_upload_page_assets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'codir2me_total_images_found'
wp option delete 'codir2me_total_images_pending'
wp option delete 'codir2me_thumbnail_images_count'
wp option delete 'codir2me_uploaded_images'
wp option delete 'codir2me_format_webp_enabled'
wp option delete 'codir2me_format_avif_enabled'
wp option delete 'codir2me_delete_in_progress'
wp option delete 'codir2me_items_to_delete'
wp option delete 'codir2me_delete_status'
wp option delete 'codir2me_broken_files'
wp option delete 'codir2me_file_versions'
wp option delete 'codir2me_format_order'
wp option delete 'codir2me_enable_optimization'

# Delete Transients
wp transient delete 'codir2me_need_cache_clear'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codir2me_disabled_%' OR option_name LIKE '_site_transient_codir2me_disabled_%'"

# Clear Cron Jobs
wp cron event delete 'codir2me_background_reprocessing_event'
wp cron event delete 'codir2me_cdn_cleanup_event'
wp cron event delete 'codir2me_auto_upload_cron'
wp cron event delete 'codir2me_background_resend_event'
wp cron event delete 'codir2me_batch_verify_files'
wp cron event delete 'codir2me_process_page_assets'
wp cron event delete 'codir2me_process_general_assets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
