#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ciam_api_settings'
wp option delete 'ciam_authentication_settings'
wp option delete 'ciam_uninstall_settings'
wp option delete 'Ciam_Authentication_settings'
wp option delete 'Ciam_Sso_Page_settings'
wp option delete 'LoginRadius_API_settings'
wp option delete 'Ciam_uninstall_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ciam_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ciam_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ciam_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ciam_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ciam_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ciam_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ciam_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ciam_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accesstoken'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accesstoken'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accesstoken'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accesstoken'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ciam_pass_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ciam_pass_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ciam_pass_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ciam_pass_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_avatar_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_avatar_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_avatar_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_avatar_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ciam_current_user_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ciam_current_user_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ciam_current_user_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ciam_current_user_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ciam_current_account_linked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ciam_current_account_linked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ciam_current_account_linked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ciam_current_account_linked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ciam_message_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ciam_message_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ciam_message_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ciam_message_text'"
