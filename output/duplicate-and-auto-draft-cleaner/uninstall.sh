#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dupadc_settings'
wp option delete 'dupadc_cleanup_activity_log'

# Delete Transients
wp transient delete 'dupadc_admin_notice'

# Clear Cron Jobs
wp cron event delete 'dupadc_auto_draft_cleanup_event'
wp cron event delete 'dupadc_duplicate_cleanup_event'

