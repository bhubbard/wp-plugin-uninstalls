#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_ak_meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_ak_meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_ak_meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_ak_meta_keywords'"
