#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cloud_uploads_options'
wp option delete 'cloud_uploads_files_scanned'
wp option delete 'ms_files_rewriting'
wp option delete 'cloud_uploads_apitoken'
wp option delete 'cloud_uploads_site_id'
wp option delete 'cloud_uploads_api_data'
wp option delete 'cloud_uploads_enabled'
wp option delete 'cloud_uploads_bulk_started'
wp option delete 'cloud_uploads_bulk_completed'
wp option delete 'cloud_uploads_deferred'
wp option delete 'cloud_uploads_sizes_deferred'

# Clear Cron Jobs
wp cron event delete 'cloud_uploads_process_deferred'
wp cron event delete 'cloud_uploads_process_sizes'
wp cron event delete 'cloud_uploads_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_s3_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_s3_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_s3_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_s3_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_s3_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_s3_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_s3_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_s3_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_s3_paths'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_s3_paths'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_s3_paths'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_s3_paths'"
