#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usces'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_itemCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_itemCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_itemCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_itemCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iu4w_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iu4w_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iu4w_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iu4w_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
