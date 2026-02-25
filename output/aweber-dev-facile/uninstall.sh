#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aweber_devfacile_oauth_id'
wp option delete 'aweber_devfacile_oauth_removed'
wp option delete 'aweber_devfacile_settings_lists'

