#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'accesly_settings'
wp option delete 'accesly_license_key'
wp option delete 'accesly_license_status'
wp option delete 'accesly_last_license_check'

# Delete Transients
wp transient delete 'accesly_license_message'

# Clear Cron Jobs
wp cron event delete 'accesly_daily_license_check_retry'
wp cron event delete 'accesly_daily_license_check'

