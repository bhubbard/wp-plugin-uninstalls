#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edhbb_enable_htaccess_blocking'
wp option delete 'edhbb_block_duration_days'

# Delete Transients
wp transient delete 'edhbb_debug_info'

# Clear Cron Jobs
wp cron event delete 'edhbb_update_hostnames_cron'

