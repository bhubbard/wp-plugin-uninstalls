#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eds_term_%'"
wp option delete '_eds_Options'

# Delete Transients
wp transient delete 'eds-framework-transient'
wp transient delete 'eds-metabox-transient'
wp transient delete 'cs-taxonomy-transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-font-awesome'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-font-awesome'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-font-awesome'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-font-awesome'"
