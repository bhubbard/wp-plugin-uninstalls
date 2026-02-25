#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bt_settings_api'
wp option delete 'bt_dismissed_api-keys'
wp option delete 'bt_settings_general'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bt_dismissed_%'"

