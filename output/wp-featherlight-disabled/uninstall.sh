#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'featherlight_plugin_db_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zeroneit_featherlight_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zeroneit_featherlight_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zeroneit_featherlight_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zeroneit_featherlight_disable'"
