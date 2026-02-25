#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oa_single_sign_on_settings'
wp option delete 'oa_single_sign_welcome_read'
wp option delete 'oa_single_sign_on_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oa_single_sign_on_user_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oa_single_sign_on_user_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oa_single_sign_on_user_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oa_single_sign_on_user_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oa_single_sign_on_identity_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oa_single_sign_on_identity_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oa_single_sign_on_identity_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oa_single_sign_on_identity_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oa_single_sign_on_sso_session_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oa_single_sign_on_sso_session_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oa_single_sign_on_sso_session_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oa_single_sign_on_sso_session_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oa_single_sign_on_sso_session_token_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oa_single_sign_on_sso_session_token_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oa_single_sign_on_sso_session_token_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oa_single_sign_on_sso_session_token_expiration'"
