#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cloud_s3_storage_mime_types'
wp option delete 'cloud_s3_settings'
wp option delete 'cloud_s3_storage_status'

# Delete Transients
wp transient delete 'cloud_s3_storage_cached_file_attach_list'
wp transient delete 'cloud_s3_storage_cached_id_list'

# Clear Cron Jobs
wp cron event delete 'cloud_s3_storage_action_reindex_image'
wp cron event delete 'cloud_s3_storage_action_clear_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_media_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_media_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_media_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_media_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_media_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_media_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_media_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_media_field'"
