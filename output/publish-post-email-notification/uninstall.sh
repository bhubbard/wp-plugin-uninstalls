#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'publish_post_notification_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_notified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_notified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_notified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_notified'"
