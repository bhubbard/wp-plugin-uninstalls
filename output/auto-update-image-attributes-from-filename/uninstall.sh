#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auiaff-enable-auto-update-attributes'
wp option delete 'auiaff-remove-characters'
wp option delete 'auiaff-remove-numbers'
wp option delete 'auiaff-remove-spaces'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
