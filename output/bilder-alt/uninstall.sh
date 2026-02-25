#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bilder_alt_api_key'
wp option delete 'bilder_alt_keywords'
wp option delete 'bilder_alt_auto_generate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
