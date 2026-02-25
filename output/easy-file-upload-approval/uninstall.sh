#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easyfua_settings%'"
wp option delete 'easyfua_settings'

# Clear Cron Jobs
wp cron event delete 'easyfua_delete_temp_files'

