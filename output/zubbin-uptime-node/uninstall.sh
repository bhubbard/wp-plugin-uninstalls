#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zubbin_un_settings'

# Delete Transients
wp transient delete 'zubbin_un_flash_notice'

# Clear Cron Jobs
wp cron event delete 'zubbin_un_monitor_tick'

