#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'user_notifications_settings_dogbytemarketing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_read_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_read_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_read_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_read_notifications'"
