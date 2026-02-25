#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmw_disable_classic_widgets_alert'
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'gmw_pointers'

# Clear Cron Jobs
wp cron event delete 'gmw_biweekly_cron'

