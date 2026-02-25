#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'accumulus_settings'
wp option delete 'accumulus_webhook_endpoint_enabled'
wp option delete 'accumulus_webhook_auth_user'
wp option delete 'accumulus_webhook_auth_password'
wp option delete 'accumulus_active_customer_role'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%client_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%client_secret'"
wp option delete 'accumulus_client_id'
wp option delete 'accumulus_client_secret'
wp option delete 'accumulus_testclient_id'
wp option delete 'accumulus_testclient_secret'
wp option delete 'accumulus_itestclient_id'
wp option delete 'accumulus_itestclient_secret'
wp option delete 'accumulus_token'
wp option delete 'accumulus_testtoken'
wp option delete 'accumulus_itesttoken'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accumulus_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accumulus_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accumulus_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accumulus_id'"
