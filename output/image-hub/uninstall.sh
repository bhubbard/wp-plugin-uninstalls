#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image_hub_enable_media_modal'
wp option delete 'image_hub_max_image_width'
wp option delete 'image_hub_max_image_height'
wp option delete 'image_hub_api_keys_giphy_api_key'
wp option delete 'image_hub_api_keys_openverse_client_id'
wp option delete 'image_hub_api_keys_openverse_client_secret'
wp option delete 'image_hub_api_keys_pexels_api_key'
wp option delete 'image_hub_api_keys_pixabay_api_key'
wp option delete 'image_hub_api_keys_unsplash_access_key'
wp option delete 'image_hub_enable_unsplash'
wp option delete 'image_hub_enable_openverse'
wp option delete 'image_hub_enable_pixabay'
wp option delete 'image_hub_enable_pexels'
wp option delete 'image_hub_enable_giphy'
wp option delete 'image_hub_enable_image_attribution'
wp option delete 'image_hub_use_default_keys'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'image_hub_enable_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
