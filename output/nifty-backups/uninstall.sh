#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nifty_backups_api_secret_token'
wp option delete 'nifty_backup_options'
wp option delete 'nifty_bu_version'
wp option delete 'nifty-bu-first-time'
wp option delete 'nifty_backup_files'

# Clear Cron Jobs
wp cron event delete 'nifty_cron_hook'
wp cron event delete 'nifty_backups_cron'

