#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mediafromzip'

# Clear Cron Jobs
wp cron event delete 'mediafromzip_register_hook'
wp cron event delete 'mediafromzip_check_images_regenerate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
