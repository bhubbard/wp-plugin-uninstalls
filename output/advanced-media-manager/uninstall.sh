#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tabsetting'
wp option delete 'tabsync'
wp option delete 'tabdownload'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smack_storage_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smack_storage_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smack_storage_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smack_storage_status'"
