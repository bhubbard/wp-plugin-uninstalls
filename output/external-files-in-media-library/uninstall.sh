#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eml_audio_mode'
wp option delete 'eml_audio_proxy'
wp option delete 'eml_audio_proxy_max_age'
wp option delete 'eml_images_mode'
wp option delete 'eml_proxy'
wp option delete 'eml_proxy_max_age'
wp option delete 'eml_video_mode'
wp option delete 'eml_video_proxy'
wp option delete 'eml_video_proxy_max_age'
wp option delete 'eml_disable_attachment_pages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'eml_use_file_dates'
wp option delete 'eml_import_running'
wp option delete 'eml_import_url_count'
wp option delete 'eml_import_errors'
wp option delete 'eml_import_files'
wp option delete 'eml_import_title'
wp option delete 'eml_import_url_max'
wp option delete 'eml_max_execution_check'
wp option delete 'eml_timeout'
wp option delete 'eml_proxy_path'
wp option delete 'eml_queue_limit'
wp option delete 'eml_queue_interval'
wp option delete 'eml_sync'
wp option delete 'eml_sync_interval'
wp option delete 'eml_sync_delete_unused_files_after_sync'
wp option delete 'eml_sync_running'
wp option delete 'eml_sync_url_count'
wp option delete 'eml_sync_url_max'
wp option delete 'eml_sync_title'
wp option delete 'eml_sync_delete_file_on_archive_deletion'
wp option delete 'eml_sync_set_automatic'
wp option delete 'eml_disable_gprd_warning'
wp option delete 'eml_directory_listing_hide_preview'
wp option delete 'eml_allowed_mime_types'
wp option delete 'eml_user_assign'
wp option delete 'efmlVersion'
wp option delete 'eml_log_mode'
wp option delete 'eml_schedules'
wp option delete 'eml_file_count'
wp option delete 'eml_file_sizes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efiml-dismissed-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pi-dismissed-%'"
wp option delete 'eml_delete_on_deinstallation'
wp option delete 'eml_switch_on_uninstallation'
wp option delete 'eml_allowed_roles'
wp option delete 'eml_check_interval'
wp option delete 'eml_google_drive_access_tokens'
wp option delete 'eml_google_drive_show_trashed'
wp option delete 'eml_google_drive_show_shared'
wp option delete 'eml_woocommerce'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eml_locally_saved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eml_locally_saved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eml_locally_saved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eml_locally_saved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eml_proxied'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eml_proxied'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eml_proxied'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eml_proxied'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eml_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eml_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eml_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eml_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eml_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eml_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eml_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eml_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eml_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eml_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eml_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eml_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eml_synced_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eml_synced_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eml_synced_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eml_synced_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catfolder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catfolder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catfolder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catfolder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eml_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eml_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eml_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eml_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exmage_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exmage_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exmage_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exmage_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fildbirdfolder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fildbirdfolder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fildbirdfolder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fildbirdfolder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'folderly_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'folderly_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'folderly_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'folderly_categories'"
