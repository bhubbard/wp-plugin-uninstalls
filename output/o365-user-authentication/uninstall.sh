#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'azure_login_setting_flow'
wp option delete 'o365_user_auth_online_access_token'
wp option delete 'o365_userauth_verify_auth_flow'
wp option delete 'o365_base_plugin_is_verify'
wp option delete 'o365_settings'
wp option delete 'o365_user_auth_online_token_expires'
wp option delete 'o365_user_auth_online_refresh_token'
wp option delete 'wpcf-usermeta'
wp option delete '365_plugin_top_slug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aaduserobjectid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aaduserobjectid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aaduserobjectid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aaduserobjectid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
