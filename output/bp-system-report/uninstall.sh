#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_system_report_log'

# Clear Cron Jobs
wp cron event delete 'bp_system_report_pseudo_cron_hook'

