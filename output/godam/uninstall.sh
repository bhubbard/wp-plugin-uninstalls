#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtgodam-api-key'
wp option delete 'rtgodam-api-key-stored'
wp option delete 'rtgodam-usage'
wp option delete 'rtgodam_plugin_activation_time'
wp option delete 'rtgodam-offer-banner'
wp option delete 'rtgodam_free_plan_notice_dismissed_timestamp'
wp option delete 'rtgodam_user_data'
wp option delete 'rtgodam-settings'
wp option delete 'rtgodam-failed-transcoding-attachments'
wp option delete 'rtgodam-transcoding-failed-notice-timestamp'
wp option delete 'rtgodam_new_attachment'
wp option delete 'rtgodam-account-token'
wp option delete 'rtgodam_video_metadata_migration_completed'
wp option delete 'rtgodam_plugin_version'
wp option delete 'rtgodam_video_post_settings'
wp option delete 'poll_ajax_style'
wp option delete 'rtgodam_video_slug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_video_migration_status'"

# Delete Transients
wp transient delete 'rtgodam_show_whats_new'
wp transient delete 'rtgodam_release_data'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'retranscode_failed_media_event'
wp cron event delete 'godam_cleanup_zip'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_media_thumbnails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_media_thumbnails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_media_thumbnails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_media_thumbnails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_media_transcoded_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_media_transcoded_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_media_transcoded_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_media_transcoded_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_retranscoding_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_retranscoding_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_retranscoding_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_retranscoding_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_media_video_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_media_video_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_media_video_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_media_video_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_transcoding_job_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_transcoding_job_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_transcoding_job_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_transcoding_job_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_godam_original_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_godam_original_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_godam_original_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_godam_original_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_transcoding_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_transcoding_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_transcoding_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_transcoding_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_transcoding_error_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_transcoding_error_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_transcoding_error_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_transcoding_error_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rt_media_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rt_media_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rt_media_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rt_media_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rt_media_thumbnails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rt_media_thumbnails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rt_media_thumbnails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rt_media_thumbnails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_media_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_media_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_media_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_media_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rt_media_video_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rt_media_video_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rt_media_video_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rt_media_video_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_transcoded_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_transcoded_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_transcoded_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_transcoded_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_hls_transcoded_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_hls_transcoded_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_hls_transcoded_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_hls_transcoded_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_transcript_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_transcript_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_transcript_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_transcript_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_godam_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_godam_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_godam_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_godam_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_file_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_file_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_file_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_file_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_media_pdf_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_media_pdf_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_media_pdf_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_media_pdf_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_is_migrated_vimeo_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_is_migrated_vimeo_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_is_migrated_vimeo_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_is_migrated_vimeo_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_godam_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_godam_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_godam_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_godam_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_custom_media_thumbnails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_custom_media_thumbnails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_custom_media_thumbnails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_custom_media_thumbnails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_owner_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_owner_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_owner_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_owner_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookmark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookmark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookmark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookmark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_analytics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_analytics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_analytics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_analytics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_transcoding_error_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_transcoding_error_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_transcoding_error_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_transcoding_error_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_transcoding_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_transcoding_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_transcoding_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_transcoding_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtgodam_thumbnail_retry_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtgodam_thumbnail_retry_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtgodam_thumbnail_retry_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtgodam_thumbnail_retry_count'"
