#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alfchecker__alc_method'
wp option delete 'alfchecker__alc_list'
wp option delete 'alfchecker__alc_value'
wp option delete 'alfchecker__alc_slack_hook'
wp option delete 'alfchecker__alc_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Clear Cron Jobs
wp cron event delete 'aflc_add_every_hour'

