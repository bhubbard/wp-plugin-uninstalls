#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'beslist_tracking_purge_events'
wp cron event delete 'beslist_tracking_purge_logs'

