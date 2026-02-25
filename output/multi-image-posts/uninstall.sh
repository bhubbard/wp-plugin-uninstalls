#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw_text_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw_text_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw_text_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw_text_input'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pin_manual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pin_manual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pin_manual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pin_manual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pin_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pin_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pin_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pin_images'"
