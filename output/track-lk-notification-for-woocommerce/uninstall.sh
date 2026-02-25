#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tracknotify_app_key'
wp option delete 'tracknotify_app_secret'
wp option delete 'active_sitewide_plugins'
wp option delete 'tracknotify_admin_notification_status'
wp option delete 'tracknotify_customer_notification_status'
wp option delete 'tracknotify_admin_notification_text'
wp option delete 'tracknotify_service'
wp option delete 'tracknotify_admin_phone'
wp option delete 'tracknotify_customer_notification_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_phone'"
