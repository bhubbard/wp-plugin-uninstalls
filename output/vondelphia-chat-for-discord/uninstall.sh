#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vdcw_do_activation_redirect'

# Delete Transients
wp transient delete 'vdcw_cache'

# Clear Cron Jobs
wp cron event delete 'vdcw_daily_cleanup'

