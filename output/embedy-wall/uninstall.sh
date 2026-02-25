#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'embedly-wall-api-key'
wp option delete 'embedly-wall-image-width'
wp option delete 'embedly-wall-image-height'
wp option delete 'embedly-wall-snarf-images'
wp option delete 'embedly-wall-ripped-image-height'
wp option delete 'embedly-wall-ripped-image-width'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unique-string'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unique-string'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unique-string'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unique-string'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
