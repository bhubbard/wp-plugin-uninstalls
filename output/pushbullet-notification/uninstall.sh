#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_fnpn_additional_key_mapping'
wp option delete 'fnpn_logs'
wp option delete '_fnpn_additional_app_keys'
wp option delete 'fnpn_pushbullet_notifications_settings'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'

# Clear Cron Jobs
wp cron event delete 'fnpn_plugin_update_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Pushbullet notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Pushbullet notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Pushbullet notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Pushbullet notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fnpn_user_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fnpn_user_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fnpn_user_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fnpn_user_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fnpn_user_notify_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fnpn_user_notify_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fnpn_user_notify_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fnpn_user_notify_posts'"
