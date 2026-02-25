#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scraps_use_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scraps_use_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scraps_use_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scraps_use_plugin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scraps_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scraps_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scraps_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scraps_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scraps_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scraps_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scraps_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scraps_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scraps_bg_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scraps_bg_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scraps_bg_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scraps_bg_image'"
