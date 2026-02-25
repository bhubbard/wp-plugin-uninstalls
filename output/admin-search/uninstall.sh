#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'admin_search_version'
wp option delete 'admin_search_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_in_admin_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_in_admin_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_in_admin_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_in_admin_search'"
