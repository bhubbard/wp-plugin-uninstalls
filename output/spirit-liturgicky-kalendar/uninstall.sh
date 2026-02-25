#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tsslk_options'
wp option delete 'tsslk_db_version'

# Clear Cron Jobs
wp cron event delete 'tsslk_fetchLitKalendarData'

