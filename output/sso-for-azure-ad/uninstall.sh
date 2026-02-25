#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sso_for_azure_ad_client_id'
wp option delete 'sso_for_azure_ad_client_secret'
wp option delete 'sso_for_azure_ad_tenant_id'
wp option delete 'sso_for_azure_ad_require_post_start'
wp option delete 'sso_for_azure_ad_use_post_callback'
wp option delete 'sso_for_azure_ad_create_users'
wp option delete 'sso_for_azure_ad_new_usernames_no_domain'
wp option delete 'sso_for_azure_ad_populate_new_profiles'
wp option delete 'sso_for_azure_ad_role_new_profile'
wp option delete 'sso_for_azure_ad_login_button_hide'
wp option delete 'sso_for_azure_ad_login_button_text'
wp option delete 'sso_for_azure_ad_enable_rewrites'
wp option delete 'sso_for_azure_ad_scope'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_password_nag'"
