#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_check_client_id'"
wp option delete 'team_feed_access_token'

