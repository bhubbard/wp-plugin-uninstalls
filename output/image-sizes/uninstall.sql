-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thumbpress_notice_dismissed_week', 'thumbpress_settings_init', 'schema-ActionScheduler_StoreSchema', 'schema-ActionScheduler_LoggerSchema', 'thumbpress-year-end-dec-21_campaign_dismissed', 'image_sizes_year_notice', 'codexpert-blog-json', 'thumbpress_max_size_value', 'thumbpress_live_chat_enabled', 'thumbpress_modules', '_image-sizes', 'medium_large_size_w', 'medium_large_size_h', 'thumbpress_action_log', 'thumbpress_convert_img_val', 'thumbpress_convert_progress', 'thumbpress_convert_total_processd', 'thumbpress_convert_total_converted', 'thumbpress_now_convert_background_total_images', 'convert_last_completed_time', 'thumbpress_now_convert_total_image', 'image-sizes_setup_done', 'image_download_disable', 'thumbpress_regenerate_progress', 'thumbpress_regenerate_total_processed', 'thumbpress_regenerate_total_deleted', 'thumbpress_regenerate_total_created', 'thumbpress_regenerate_limit', 'thumbpress_regenerate_total_image', 'thumbpress_regenerate_last_schedule_time', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'thumbpress_notice_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE '%_dismissed';
DELETE FROM wp_options WHERE option_name LIKE 'cx-plugin-info-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file', 'thumbpress_facebook_image', 'thumbpress_linkedin_image', 'thumbpress_twitter_image', 'thumbpress_pinterest_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file', 'thumbpress_facebook_image', 'thumbpress_linkedin_image', 'thumbpress_twitter_image', 'thumbpress_pinterest_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file', 'thumbpress_facebook_image', 'thumbpress_linkedin_image', 'thumbpress_twitter_image', 'thumbpress_pinterest_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file', 'thumbpress_facebook_image', 'thumbpress_linkedin_image', 'thumbpress_twitter_image', 'thumbpress_pinterest_image');

