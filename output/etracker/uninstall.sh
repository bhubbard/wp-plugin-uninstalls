#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etracker_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'etracker_db_version'

# Delete Transients
wp transient delete 'etracker_notice_enable_integrated_reporting'
wp transient delete 'etracker_customer_polling'

# Clear Cron Jobs
wp cron event delete 'etracker_cron_fetch_reports'
wp cron event delete 'etracker_cron_cleanup_logging'

