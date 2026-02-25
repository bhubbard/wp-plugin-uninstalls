#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ufg_current_version'
wp option delete 'ufg_last_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ufg_details_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ufg_filters_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ufg_gallery_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ufg_settings_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
