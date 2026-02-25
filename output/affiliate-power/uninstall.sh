#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affiliate-power-options'
wp option delete 'affiliate-power-meta-options'
wp option delete 'affiliate-power-version'
wp option delete 'affiliate-power-premium'

# Clear Cron Jobs
wp cron event delete 'affiliate_power_daily_event'

