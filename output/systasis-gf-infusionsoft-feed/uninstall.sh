#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'infusionsoft_sdk_app_name'
wp option delete 'infusionsoft_sdk_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'infusionsoft_sdk_%'"

