#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_menu_title'"
wp option delete 'sh4-rest_auth_code'
wp option delete 'sh4-rest_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auth_code'"

