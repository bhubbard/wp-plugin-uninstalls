#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avatar_default_wp_user_avatar'
wp option delete 'wp_user_avatar_tinymce'
wp option delete 'wp_user_avatar_allow_upload'
wp option delete 'wp_user_avatar_disable_um_avatars'
wp option delete 'wp_user_avatar_force_file_uploader'
wp option delete 'wp_user_avatar_disable_gravatar'
wp option delete 'wp_user_avatar_edit_avatar'
wp option delete 'wp_user_avatar_resize_crop'
wp option delete 'wp_user_avatar_resize_h'
wp option delete 'wp_user_avatar_resize_upload'
wp option delete 'wp_user_avatar_resize_w'
wp option delete 'wp_user_avatar_upload_size_limit'
wp option delete 'wpua_hash_gravatar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'wp_user_avatar_default_avatar_updated'
wp option delete 'wp_user_avatar_users_updated'
wp option delete 'wp_user_avatar_media_updated'
wp option delete 'cron'
wp option delete 'wp_user_avatar_load_scripts'
wp option delete 'wpua_has_gravatar'

# Clear Cron Jobs
wp cron event delete 'wpua_has_gravatar_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
