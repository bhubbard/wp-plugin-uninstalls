#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'ppcr_daily_cleanup'
wp cron event delete 'ppcr_delayed_trigger'

