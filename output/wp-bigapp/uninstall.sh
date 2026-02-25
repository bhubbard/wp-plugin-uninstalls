#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bigapp_extend_setting'
wp option delete 'bigapp_special_conf'
wp option delete 'bigapp_menu_conf'
wp option delete 'bigapp_banner_conf'
wp option delete 'bigapp_ak_sk'
wp option delete 'bigapp_menu_switch'
wp option delete 'osop'
wp option delete 'wp_user_avatar_allow_upload'
wp option delete 'bigapp_json_api_plugin_version'
wp option delete 'wpfp_options'
wp option delete 'views_options'
wp option delete 'wp_user_avatar_upload_size_limit'
wp option delete 'wp_user_avatar_resize_upload'
wp option delete 'wp_user_avatar_resize_w'
wp option delete 'wp_user_avatar_resize_h'
wp option delete 'wp_user_avatar_resize_crop'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar'"
