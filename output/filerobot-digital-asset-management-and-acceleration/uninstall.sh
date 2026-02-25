#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'filerobot_token'
wp option delete 'filerobot_sec_id'
wp option delete 'filerobot_endpoint'
wp option delete 'filerobot_container'
wp option delete 'filerobot_sync_post_id_to_metadata'
wp option delete 'filerobot_sync_post_id'
wp option delete 'filerobot_cname'
wp option delete 'filerobot_cloud_storage_only'
wp option delete 'filerobot_use_fmaw_only'
wp option delete 'filerobot_sync_comments'
wp option delete 'filerobot_sync_metadata'
wp option delete 'filerobot_sync_multiple_metadata_to_db'
wp option delete 'filerobot_metadata_fields'
wp option delete 'filerobot_name_the_metadata_list'
wp option delete 'filerobot_change_value_wp_attached_file_to_cdn_link'
wp option delete 'filerobot_sync_metadata_by_custom_meta_key'
wp option delete 'filerobot_metadata_by_custom_meta_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Clear Cron Jobs
wp cron event delete 'wp_filerobot_sync_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
