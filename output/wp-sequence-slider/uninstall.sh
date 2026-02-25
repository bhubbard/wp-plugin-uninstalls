#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_display_title_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_display_title_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_display_title_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_display_title_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_display_link_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_display_link_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_display_link_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_display_link_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_link_to_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_link_to_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_link_to_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_link_to_featured_image'"
