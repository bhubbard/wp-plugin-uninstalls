#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_util_script_runner'

# Clear Cron Jobs
wp cron event delete 'wp_util_cron_action'

