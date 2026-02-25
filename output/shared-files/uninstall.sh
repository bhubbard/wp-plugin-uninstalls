#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shared_files_settings'
wp option delete 'shared-files-sc'
wp option delete 'shared_files_how_to_show_notice'
wp option delete 'shared_files_version'
wp option delete 'shared_files_rating_show_notice_now_v2'
wp option delete 'shared_files_rating_notice_status_v2'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'shared_files_rating_notice_later_seconds_v2'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'check_expired_files'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_subdir'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_subdir'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_subdir'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_subdir'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_filesize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_filesize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_filesize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_filesize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_load_cnt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_load_cnt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_load_cnt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_load_cnt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_file_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_file_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_file_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_file_added'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_limit_downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_limit_downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_limit_downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_limit_downloads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_expiration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_main_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_main_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_main_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_main_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_notify_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_notify_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_notify_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_notify_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_embed_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_embed_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_embed_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_embed_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_embed_post_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_embed_post_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_embed_post_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_embed_post_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_not_public'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_not_public'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_not_public'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_not_public'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_upload_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_upload_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_upload_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_upload_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_media_library_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_media_library_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_media_library_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_media_library_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_file_upload_cf_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_file_upload_cf_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_file_upload_cf_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_file_upload_cf_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_bandwidth_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_bandwidth_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_bandwidth_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_bandwidth_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_frontend_uploader'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_frontend_uploader'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_frontend_uploader'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_frontend_uploader'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sf_permission_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sf_permission_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sf_permission_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sf_permission_user_id'"
