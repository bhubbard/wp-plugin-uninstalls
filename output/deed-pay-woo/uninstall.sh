#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'deedpay_settings'

# Clear Cron Jobs
wp cron event delete 'deedpay_daily_cleanup'

