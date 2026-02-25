#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-hypermd-settings'
wp option delete 'hypermd_basics'
wp option delete 'hypermd_syntax_highlighting'
wp option delete 'hypermd_editor_advanced'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
