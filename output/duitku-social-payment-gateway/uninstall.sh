#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'duitku_environment'
wp option delete 'duitku_merchant_code'
wp option delete 'duitku_api_key'
wp option delete 'duitku_prefix'
wp option delete 'duitku_debug'

