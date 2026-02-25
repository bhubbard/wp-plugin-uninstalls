#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cta_custom_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cta_custom_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cta_custom_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cta_custom_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cta_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cta_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cta_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cta_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cta_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cta_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cta_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cta_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cta_button_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cta_button_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cta_button_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cta_button_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cta_button_open_new_window'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cta_button_open_new_window'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cta_button_open_new_window'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cta_button_open_new_window'"
