#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aitoa_gemini_api_key'
wp option delete 'aitoa_default_try_on_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitoa_enable_try_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitoa_enable_try_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitoa_enable_try_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitoa_enable_try_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitoa_try_on_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitoa_try_on_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitoa_try_on_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitoa_try_on_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitoa_tryable_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitoa_tryable_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitoa_tryable_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitoa_tryable_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aitoa_profile_photo_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aitoa_profile_photo_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aitoa_profile_photo_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aitoa_profile_photo_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vtoa_profile_photo_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vtoa_profile_photo_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vtoa_profile_photo_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vtoa_profile_photo_id'"
