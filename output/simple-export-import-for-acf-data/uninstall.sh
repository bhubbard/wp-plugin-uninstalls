#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seip_background_import_status'
wp option delete 'seip_settings'
wp option delete 'seip_license_key'
wp option delete 'seip_bulk_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_%'"
wp option delete 'seip_export_file'
wp option delete 'seip_subscription'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
