#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hi_fcm_post_type_%'"
wp option delete 'hi_fcm_api_key'
wp option delete 'hi_fcm_channel'
wp option delete 'hi_fcm_sound'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hi_fcm_push_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hi_fcm_push_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hi_fcm_push_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hi_fcm_push_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hi_fcm_use_channel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hi_fcm_use_channel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hi_fcm_use_channel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hi_fcm_use_channel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hi_fcm_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hi_fcm_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hi_fcm_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hi_fcm_subscription'"
