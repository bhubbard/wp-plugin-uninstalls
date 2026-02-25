#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'server-livechat-db-version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minecraft_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minecraft_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minecraft_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minecraft_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whitelist_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whitelist_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whitelist_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whitelist_status'"
