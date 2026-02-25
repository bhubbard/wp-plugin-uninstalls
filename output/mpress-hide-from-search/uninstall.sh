#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide_from_search_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hide_from_search_engines'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hide_from_search_engines'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hide_from_search_engines'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hide_from_search_engines'"
