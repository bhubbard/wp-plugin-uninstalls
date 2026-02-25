#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'poplugin_registered_org'
wp option delete 'poplugin_user_exists'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_onboard_script'"
wp option delete 'update_onboard_script'

