#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbcbackup_options'

# Clear Cron Jobs
wp cron event delete 'dbc_backup'

