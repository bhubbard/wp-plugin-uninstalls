#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wideaccess_db_version'
wp option delete 'wideaccess_license_key'

# Delete Transients
wp transient delete 'wideaccess_license_valid'
wp transient delete 'wideaccess_license_data'

# Clear Cron Jobs
wp cron event delete 'wideaccess_daily_license_check'
wp cron event delete 'wideaccess_recurring_license_check'
wp cron event delete 'wideaccess`1_minute_license_check'
wp cron event delete 'wideaccess_minute_license_check'

