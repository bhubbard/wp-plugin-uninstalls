#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'el_gallery_mobile_detect'
wp option delete 'el_gallery_time'
wp option delete 'el_gallery_width'
wp option delete 'el_gallery_height'
wp option delete 'el_gallery_nav'
wp option delete 'el_gallery_nav_color'
wp option delete 'el_gallery_nav_light'
wp option delete 'el_gallery_center'
wp option delete 'el_gallery_icon'
wp option delete 'el_gallery_links'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
