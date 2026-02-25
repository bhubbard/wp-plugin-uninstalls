#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'expenseszyx987_cron_dbbackup_hook'

