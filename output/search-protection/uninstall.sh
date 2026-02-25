#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'ebmsp_sprotect_daily_log_cleanup'

