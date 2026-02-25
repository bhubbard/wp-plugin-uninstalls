#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfrank_sf_current_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sf_slider_%'"
wp option delete 'wpfrank_sf_last_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
