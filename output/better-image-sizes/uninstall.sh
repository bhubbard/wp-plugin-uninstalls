#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bis_disable_big_image_size_threshold'
wp option delete 'bis_disabled_upscaling'
wp option delete 'bis_disabled_sizes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'focal_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'focal_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'focal_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'focal_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
