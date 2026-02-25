#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmc_options'

# Delete Transients
wp transient delete 'health-check-site-status-result'
wp transient delete 'wpmc_scanned_files'

# Clear Cron Jobs
wp cron event delete 'wp_site_health_scheduled_check'

