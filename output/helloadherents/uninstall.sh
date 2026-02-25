#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ha_option_name'

# Clear Cron Jobs
wp cron event delete 'hello_adh_hook'

