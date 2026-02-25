#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'ccpidb_version'
wp option delete 'ccpidb_install_time'
wp option delete 'ccpidb_db_version'
wp option delete 'ccpidb_first_installed_version'
wp option delete 'indbox_version'
wp option delete 'ccpidb_encryption_key'
wp option delete 'ccpidb_activated'
wp option delete 'indbox_encryption_key'
wp option delete 'indbox_settings'
wp option delete 'indbox-app-key'
wp option delete 'indbox-app-secret'
wp option delete 'indbox_access_tokens'
wp option delete 'indbox-redirect-url'
wp option delete 'ccpidb_settings'
wp option delete 'integrate_dropbox_version'
wp option delete 'ccpidb-redirect-url'
wp option delete 'ccpidb_schedule_media_info_file_keys'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'ccpidb-rating-notice-interval'
wp transient delete 'ccpidb_generate_file_media_info_running'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'ccpidb_cron_fire'
wp cron event delete 'ccpidb_sync_existing_dropbox_files_event'
wp cron event delete 'ccpidb_generate_file_media_info_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_indbox_media_folder_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_indbox_media_folder_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_indbox_media_folder_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_indbox_media_folder_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_indbox_media_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_indbox_media_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_indbox_media_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_indbox_media_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_indbox_media_file_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_indbox_media_file_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_indbox_media_file_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_indbox_media_file_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccpidb_media_folder_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccpidb_media_folder_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccpidb_media_folder_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccpidb_media_folder_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccpidb_media_file_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccpidb_media_file_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccpidb_media_file_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccpidb_media_file_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccpidb_media_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccpidb_media_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccpidb_media_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccpidb_media_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccpidb_media_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccpidb_media_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccpidb_media_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccpidb_media_migrated'"
