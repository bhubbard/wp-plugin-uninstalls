#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'license_envato_token_valid'
wp option delete 'license_envato_token_secret'
wp option delete 'license_envato_installed'
wp option delete 'LICENSE_ENVATO_VERSION'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_envato_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_envato_is_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_envato_itemid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_envato_purchase_code'"

