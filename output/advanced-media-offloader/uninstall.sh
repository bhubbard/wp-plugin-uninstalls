#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advmo_first_activated_version'
wp option delete 'advmo_bulk_offload_cancelled'
wp option delete 'advmo_bulk_offload_last_update'
wp option delete 'advmo_bulk_offload_data'
wp option delete 'advmo_last_connection_check'
wp option delete 'advmo_settings'
wp option delete 'advmo_credentials'
wp option delete 'advmo_bulk_offload_media_process_status'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_batch_lock' OR option_name LIKE '_site_transient_%_batch_lock'"

# Clear Cron Jobs
wp cron event delete 'advmo_bulk_offload_cron'
wp cron event delete 'advmo_check_stalled_processes'
wp cron event delete 'advmo_cleanup_orphaned_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advmo_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advmo_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advmo_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advmo_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advmo_error_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advmo_error_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advmo_error_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advmo_error_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advmo_offloaded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advmo_offloaded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advmo_offloaded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advmo_offloaded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advmo_tmp_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advmo_tmp_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advmo_tmp_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advmo_tmp_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advmo_offloaded_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advmo_offloaded_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advmo_offloaded_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advmo_offloaded_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advmo_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advmo_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advmo_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advmo_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advmo_bucket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advmo_bucket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advmo_bucket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advmo_bucket'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advmo_retention_policy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advmo_retention_policy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advmo_retention_policy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advmo_retention_policy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advmo_object_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advmo_object_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advmo_object_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advmo_object_version'"
