#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jesaei_jun23_sale_transient_deleted'
wp option delete 'jes_anchor_settings'

# Delete Transients
wp transient delete 'jesaei_notice_dismissed'
wp transient delete 'jesaei_episodes'

# Clear Cron Jobs
wp cron event delete 'jesaei_hourly_event'

