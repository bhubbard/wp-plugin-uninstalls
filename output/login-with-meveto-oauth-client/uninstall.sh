#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%oauth_client_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%oauth_client_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%allow_passwords'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pusher_app_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pusher_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pusher_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pusher_cluster'"
wp option delete 'meveto_pusher_key'
wp option delete 'meveto_pusher_cluster'
wp option delete 'meveto_oauth_client_id'
wp option delete 'meveto_oauth_client_secret'
wp option delete 'meveto_allow_passwords'
wp option delete 'meveto_pusher_app_id'
wp option delete 'meveto_pusher_secret'
wp option delete 'meveto_connect_page'
wp option delete 'meveto_login_with_meveto_page'
wp option delete 'meveto_oauth_scope'
wp option delete 'meveto_oauth_authorize_url'

