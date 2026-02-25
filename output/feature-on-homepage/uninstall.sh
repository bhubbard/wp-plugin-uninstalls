#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_foh_display_homepage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_foh_display_homepage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_foh_display_homepage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_foh_display_homepage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_foh_homepage_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_foh_homepage_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_foh_homepage_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_foh_homepage_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_foh_homepage_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_foh_homepage_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_foh_homepage_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_foh_homepage_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_homepage_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_homepage_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_homepage_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_homepage_icon'"
