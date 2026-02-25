#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'popnotifi_url_key'
wp option delete 'popnotifi_api_key'
wp option delete 'popnotifi_native_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pop_notifi_notification_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pop_notifi_notification_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pop_notifi_notification_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pop_notifi_notification_sent'"
