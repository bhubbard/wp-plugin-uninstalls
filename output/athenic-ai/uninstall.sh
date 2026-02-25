#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'athenic_db_version'

# Clear Cron Jobs
wp cron event delete 'athenic_data_push_schedule'

