#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'back_in_stock_notify_installed'
wp option delete 'back_in_stock_notify_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_back_in_stock_notify_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_back_in_stock_notify_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_back_in_stock_notify_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_back_in_stock_notify_notifications'"
