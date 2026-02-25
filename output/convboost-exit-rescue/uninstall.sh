#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'convbst_er_settings'
wp option delete 'convbst_er_health'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convbst_er_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convbst_er_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convbst_er_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convbst_er_disable'"
