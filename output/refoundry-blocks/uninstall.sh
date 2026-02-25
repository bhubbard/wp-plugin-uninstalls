#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fndry_global_styles'
wp option delete 'fndry_custom_fields'
wp option delete 'fndry_animation_settings'
wp option delete 'fndry_general_settings'
wp option delete 'fndry_component_styles'
wp option delete 'foundry_settings'
wp option delete 'fndry_license_key'
wp option delete 'fndry_license_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
