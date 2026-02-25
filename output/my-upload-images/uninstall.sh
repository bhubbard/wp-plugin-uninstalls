#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mui_posttype'
wp option delete 'mui_pages'
wp option delete 'mui_keepvalues'
wp option delete 'mui_postthumb'
wp option delete 'mui_title'
wp option delete 'mui_position'
wp option delete 'mui_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_upload_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_upload_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_upload_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_upload_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_my_upload_images_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_my_upload_images_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_my_upload_images_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_my_upload_images_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
