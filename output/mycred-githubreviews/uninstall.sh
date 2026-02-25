#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'github_app_client_id'
wp option delete 'github_app_client_secret'
wp option delete 'github_connect_redirect_url'
wp option delete 'github_hook_url'
wp option delete 'github_account_info'
wp option delete 'github_account_selected_repositories'
wp option delete 'github_repositories'
wp option delete 'github_repositories_hooks'
wp option delete 'myCred_github_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'github_user_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'github_user_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'github_user_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'github_user_name'"
