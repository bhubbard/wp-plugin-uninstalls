#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'kinde_auth_token_host'
wp option delete 'kinde_auth_client_id'
wp option delete 'kinde_auth_client_secret'
wp option delete 'kinde_auth_grant_type'
wp option delete 'kinde_auth_default_login_page'
wp option delete 'kinde_auth_site_protocol'
wp option delete 'kinde_auth_auto_user_role'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
