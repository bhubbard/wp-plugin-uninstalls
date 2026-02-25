#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mitypes_custom_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mitypes_custom_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mitypes_custom_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mitypes_custom_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mitypes_custom_item_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mitypes_custom_item_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mitypes_custom_item_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mitypes_custom_item_data'"
