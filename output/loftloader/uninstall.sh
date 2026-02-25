#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loftloader_lite_version'
wp option delete 'loftloader-custom-settings'
wp option delete 'loftloader_main_switch'
wp option delete 'loftloader_show_range'
wp option delete 'loftloader_bg_color'
wp option delete 'loftloader_bg_opacity'
wp option delete 'loftloader_bg_animation'
wp option delete 'loftloader_loader_type'
wp option delete 'loftloader_loader_color'
wp option delete 'loftloader_custom_img'
wp option delete 'loftloader_img_width'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loftloader_page_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loftloader_page_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loftloader_page_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loftloader_page_shortcode'"
