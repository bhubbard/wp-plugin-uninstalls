#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smt-media-categories'
wp option delete 'cmc-fv'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smet_attachment_media_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smet_attachment_media_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smet_attachment_media_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smet_attachment_media_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
