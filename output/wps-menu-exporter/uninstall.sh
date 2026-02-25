#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rss_language'

# Delete Transients
wp transient delete 'wps_plugins_adds'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object'"
