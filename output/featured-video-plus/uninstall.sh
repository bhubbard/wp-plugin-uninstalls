#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fvp-settings'
wp option delete 'fvp-version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fvp_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fvp_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fvp_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fvp_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fvp_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fvp_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fvp_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fvp_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fvp_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fvp_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fvp_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fvp_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvp_activation_notification_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvp_activation_notification_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvp_activation_notification_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvp_activation_notification_ignore'"
