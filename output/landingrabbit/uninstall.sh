#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lrwpp_keep_theme_chrome'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lrwpp_keep_theme_chrome'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lrwpp_keep_theme_chrome'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lrwpp_keep_theme_chrome'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lrwpp_keep_theme_chrome'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rabbit_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rabbit_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rabbit_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rabbit_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lr_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lr_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lr_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lr_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
