#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icf7ic'
wp option delete 'icf7ic_signals_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'icf7ic_%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'auto_update_plugins'
wp option delete 'auto_update_core'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'icf7ic_lists_cache'

# Clear Cron Jobs
wp cron event delete 'icf7ic_metrics_heartbeat'

