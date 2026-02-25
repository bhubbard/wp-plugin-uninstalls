#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'my_agile_pixel_do_cron_sync_daily_hook'

