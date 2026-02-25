#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'share_on_pixelfed_settings'

# Clear Cron Jobs
wp cron event delete 'share_on_pixelfed_post'
wp cron event delete 'share_on_pixelfed_refresh_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_share_on_pixelfed_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_share_on_pixelfed_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_share_on_pixelfed_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_share_on_pixelfed_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_share_on_pixelfed_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_share_on_pixelfed_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_share_on_pixelfed_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_share_on_pixelfed_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_share_on_pixelfed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_share_on_pixelfed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_share_on_pixelfed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_share_on_pixelfed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_share_on_pixelfed_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_share_on_pixelfed_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_share_on_pixelfed_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_share_on_pixelfed_status'"
