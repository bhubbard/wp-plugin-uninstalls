#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ehami_data_install'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_icons_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_icons_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_icons_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_icons_disable'"
