#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iul_data'
wp option delete 'iul_behavior'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_active_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_active_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_active_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_active_time'"
