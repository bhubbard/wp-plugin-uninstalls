#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sg_api_stats_db_version'

# Clear Cron Jobs
wp cron event delete 'sg_api_stats_cron'

