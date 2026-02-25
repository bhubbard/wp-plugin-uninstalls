#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ultimate_wp_slider_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwps_slides'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwps_slides'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwps_slides'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwps_slides'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwps_slide_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwps_slide_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwps_slide_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwps_slide_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uwps_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uwps_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uwps_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uwps_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uwps_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uwps_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uwps_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uwps_type'"
