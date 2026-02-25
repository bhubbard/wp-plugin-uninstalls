#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'gdmaq_queue_status'

# Clear Cron Jobs
wp cron event delete 'gdmaq_run_queue'
wp cron event delete 'gdmaq_run_maintenance'

