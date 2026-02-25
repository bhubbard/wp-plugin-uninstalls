#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'lh_cache_remote_images_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lh_copy_from_url-original_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lh_copy_from_url-original_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lh_copy_from_url-original_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lh_copy_from_url-original_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lh_cache_remote_images-queued_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lh_cache_remote_images-queued_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lh_cache_remote_images-queued_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lh_cache_remote_images-queued_image'"
