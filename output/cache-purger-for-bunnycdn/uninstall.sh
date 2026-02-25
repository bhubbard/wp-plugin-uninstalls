#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bunnycdn_api_key'
wp option delete 'bunnycdn_pull_zone'
wp option delete 'bunnycdn_excluded_urls'
wp option delete 'bunnycdn_always_purge'
wp option delete 'bunnycdn_pull_zone_name'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bunnycdn_purge_scheduled_%' OR option_name LIKE '_site_transient_bunnycdn_purge_scheduled_%'"

# Clear Cron Jobs
wp cron event delete 'bunnycdn_purge_event'

