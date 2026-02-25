#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gutenberg_cloud_db_version'

# Clear Cron Jobs
wp cron event delete 'fgc_cron_check_updates'

