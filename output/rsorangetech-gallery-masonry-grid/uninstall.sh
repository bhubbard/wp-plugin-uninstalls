#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rsorangetech_columns'
wp option delete 'rsorangetech_layout'
wp option delete 'rsorangetech_lightbox'
wp option delete 'rsorangetech_lazyload_enable'
wp option delete 'rsorangetech_gallery_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsorangetech_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsorangetech_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsorangetech_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsorangetech_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
