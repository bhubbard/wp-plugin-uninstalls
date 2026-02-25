#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'iare_crm_connection_status'
wp transient delete 'iare_crm_campaigns'

# Clear Cron Jobs
wp cron event delete 'iare_crm_sync_campaigns'
wp cron event delete 'iare_crm_cleanup_logs'

