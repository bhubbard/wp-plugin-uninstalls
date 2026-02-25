#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_ckpn_additional_key_mapping'
wp option delete 'ckpn_logs'
wp option delete '_ckpn_additional_app_keys'
wp option delete 'ckpn_pushover_notifications_settings'
wp option delete '_ckpn_users_with_keys'

# Delete Transients
wp transient delete '_wp_push_extensions_listing'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'

# Clear Cron Jobs
wp cron event delete 'ckpn_plugin_update_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ckpn_user_notify_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ckpn_user_notify_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ckpn_user_notify_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ckpn_user_notify_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ckpn_user_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ckpn_user_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ckpn_user_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ckpn_user_key'"
