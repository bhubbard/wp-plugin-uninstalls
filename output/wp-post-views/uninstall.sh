#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppv_api_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'entry_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'entry_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'entry_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'entry_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'view_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'view_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'view_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'view_ip'"
