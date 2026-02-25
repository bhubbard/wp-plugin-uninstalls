#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'catgal_interval'
wp option delete 'catgal_otoplay'
wp option delete 'catgal_enableTitle'
wp option delete 'catgal_enableControls'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
