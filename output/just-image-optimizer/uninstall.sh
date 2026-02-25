#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'medium_large_size_w'
wp option delete 'medium_large_size_h'

# Clear Cron Jobs
wp cron event delete 'just_image_optimizer_autorun'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_just_img_opt_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_just_img_opt_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_just_img_opt_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_just_img_opt_status'"
