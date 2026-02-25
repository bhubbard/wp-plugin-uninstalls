#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_plus_api'
wp option delete 'social_shares_plugin_version'

# Clear Cron Jobs
wp cron event delete 'social_shares_cron_hook_5min'
wp cron event delete 'social_shares_cron_hook_20min'
wp cron event delete 'social_shares_cron_hook_1hour'
wp cron event delete 'social_shares_cron_hook_1week'

