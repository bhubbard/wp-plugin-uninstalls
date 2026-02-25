#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'instant_img_settings_updated'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'instant_img_settings'
wp option delete 'instant_img_api_settings'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_instant_images_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_instant_images_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_instant_images_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_instant_images_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_instant_images_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_instant_images_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_instant_images_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_instant_images_original_url'"
