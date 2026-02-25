#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'learnworlds_sso_use_woocommerce_account_urls'
wp option delete 'learnworlds_sso_access_token'
wp option delete 'learnworlds_sso_access_token_expires_on'
wp option delete 'learnworlds_sso_client_id'
wp option delete 'learnworlds_sso_client_secret'
wp option delete 'learnworlds_sso_api_server_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'learnworlds_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'learnworlds_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'learnworlds_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'learnworlds_user_id'"
