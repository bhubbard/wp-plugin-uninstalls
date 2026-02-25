#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiatf_enable_auto_alt'
wp option delete 'aiatf_overwrite_alt'
wp option delete 'aitat_enable_auto_alt'
wp option delete 'aitat_overwrite_alt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
