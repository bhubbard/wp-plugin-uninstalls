#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpptwi_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpptwi_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpptwi_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpptwi_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpptwi_icon_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpptwi_icon_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpptwi_icon_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpptwi_icon_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpptwi_icon_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpptwi_icon_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpptwi_icon_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpptwi_icon_size'"
