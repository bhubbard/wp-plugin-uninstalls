#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'siteimprove_accessibility_daily_stats_aggregation'

