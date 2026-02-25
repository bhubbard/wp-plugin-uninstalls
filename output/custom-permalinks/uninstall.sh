#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_permalinks_post_types_settings'
wp option delete 'custom_permalink_table'
wp option delete 'polylang'
wp option delete 'custom_permalinks_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_permalink_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_permalink_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_permalink_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_permalink_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_permalink_regenerate_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_permalink_regenerate_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_permalink_regenerate_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_permalink_regenerate_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_permalink'"
