#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_easter_egg_plugin_settings'
wp option delete 'wp_easter_egg_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpee_added_to_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpee_added_to_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpee_added_to_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpee_added_to_filter'"
