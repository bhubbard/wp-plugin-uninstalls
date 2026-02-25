#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_image_pages'
wp option delete 'auto_image_posts'
wp option delete 'auto_image_content_length'
wp option delete 'auto_image_remove_linebreaks'
wp option delete 'auto_image_default_disable'
wp option delete 'auto_image_write_text'
wp option delete 'auto_image_text'
wp option delete 'auto_image_width'
wp option delete 'auto_image_height'
wp option delete 'auto_image_bg_image'
wp option delete 'auto_image_bg_color'
wp option delete 'auto_image_fontface'
wp option delete 'auto_image_fontsize'
wp option delete 'auto_image_text_color'
wp option delete 'auto_image_shadow'
wp option delete 'auto_image_shadow_color'
wp option delete 'auto_image_set_first'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afift-disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afift-disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afift-disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afift-disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afift-disable-set-first'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afift-disable-set-first'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afift-disable-set-first'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afift-disable-set-first'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afift_lite2pro_ignore_notice4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afift_lite2pro_ignore_notice4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afift_lite2pro_ignore_notice4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afift_lite2pro_ignore_notice4'"
