#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oa_social_login_settings'
wp option delete 'oa_social_login_activation_message'
wp option delete 'oa_social_login_hide_rate_message'
wp option delete 'oa_social_login_postpone_rate_message'
wp option delete 'oa_social_login_api_settings_verified'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oa_social_login_identity_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oa_social_login_identity_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oa_social_login_identity_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oa_social_login_identity_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oa_social_login_user_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oa_social_login_user_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oa_social_login_user_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oa_social_login_user_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oa_social_login_request_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oa_social_login_request_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oa_social_login_request_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oa_social_login_request_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oa_social_login_user_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oa_social_login_user_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oa_social_login_user_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oa_social_login_user_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oa_social_login_user_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oa_social_login_user_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oa_social_login_user_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oa_social_login_user_picture'"
