#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'userphoto_jpeg_compression'
wp option delete 'userphoto_maximum_dimension'
wp option delete 'userphoto_thumb_dimension'
wp option delete 'userphoto_admin_notified'
wp option delete 'userphoto_level_moderated'
wp option delete 'userphoto_use_avatar_fallback'
wp option delete 'userphoto_override_avatar'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userphoto_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userphoto_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userphoto_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userphoto_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userphoto_approvalstatus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userphoto_approvalstatus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userphoto_approvalstatus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userphoto_approvalstatus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userphoto_image_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userphoto_image_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userphoto_image_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userphoto_image_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userphoto_image_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userphoto_image_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userphoto_image_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userphoto_image_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userphoto_image_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userphoto_image_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userphoto_image_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userphoto_image_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userphoto_thumb_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userphoto_thumb_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userphoto_thumb_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userphoto_thumb_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userphoto_thumb_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userphoto_thumb_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userphoto_thumb_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userphoto_thumb_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userphoto_thumb_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userphoto_thumb_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userphoto_thumb_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userphoto_thumb_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userphoto_rejectionreason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userphoto_rejectionreason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userphoto_rejectionreason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userphoto_rejectionreason'"
