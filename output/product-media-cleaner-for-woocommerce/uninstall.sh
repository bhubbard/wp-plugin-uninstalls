#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmc_last_status'

# Clear Cron Jobs
wp cron event delete 'wpmc_process_queue_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
