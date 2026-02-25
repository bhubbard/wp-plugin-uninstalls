#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkguard_scan_interval'
wp option delete 'linkguard_email_notify'
wp option delete 'linkguard_scan_progress'
wp option delete 'linkguard_nt_version'

# Clear Cron Jobs
wp cron event delete 'linkguard_nt_cron_scan'
wp cron event delete 'linkguard_nt_daily_check'

