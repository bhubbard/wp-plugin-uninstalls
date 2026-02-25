#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-dokiv_sharing_link_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-dokiv_sharing_link_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-dokiv_sharing_link_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-dokiv_sharing_link_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-dokiv_sharing_bgcolor_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-dokiv_sharing_bgcolor_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-dokiv_sharing_bgcolor_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-dokiv_sharing_bgcolor_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-dokiv_sharing_width_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-dokiv_sharing_width_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-dokiv_sharing_width_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-dokiv_sharing_width_field'"
