#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'photostream_streams'

# Clear Cron Jobs
wp cron event delete 'photostream_hourly_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_stream'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_stream'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_stream'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_stream'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_batch_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_batch_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_batch_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_batch_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_photo_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_photo_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_photo_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_photo_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_image_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_image_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_image_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_image_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ps_exif_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ps_exif_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ps_exif_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ps_exif_%'"
