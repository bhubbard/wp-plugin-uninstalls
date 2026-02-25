#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gallery_5cript_disable_frontend_script'
wp option delete 'gallery_5cript_api_enabled'
wp option delete 'gallery_5cript_delete_data_on_uninstall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
