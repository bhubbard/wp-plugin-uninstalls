#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wxas_slide_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wxas_slide_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wxas_slide_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wxas_slide_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wxas_theme_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wxas_theme_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wxas_theme_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wxas_theme_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wxas_theme_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wxas_theme_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wxas_theme_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wxas_theme_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wxas_items_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wxas_items_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wxas_items_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wxas_items_list'"
