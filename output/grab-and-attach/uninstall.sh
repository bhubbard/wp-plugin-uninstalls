#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'wpt_checkbox_plugin_active'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alt-post-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alt-post-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alt-post-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alt-post-title'"
