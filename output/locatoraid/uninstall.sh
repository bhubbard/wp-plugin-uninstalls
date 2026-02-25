#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'locatoraid_share_database'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_menu_title'"
wp option delete 'locatoraid-rest_auth_code'
wp option delete 'locatoraid-rest_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auth_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"

