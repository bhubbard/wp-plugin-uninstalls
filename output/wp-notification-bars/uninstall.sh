#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_notification_bar_activated'
wp option delete 'wp_notification_bar_notice_views'
wp option delete 'mtsnb_stats'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mtsnb_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mtsnb_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mtsnb_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mtsnb_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_notification_bar_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_notification_bar_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_notification_bar_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_notification_bar_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_notification_bar_ignore_notice_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_notification_bar_ignore_notice_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_notification_bar_ignore_notice_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_notification_bar_ignore_notice_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mtsnb_override_bar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mtsnb_override_bar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mtsnb_override_bar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mtsnb_override_bar'"
