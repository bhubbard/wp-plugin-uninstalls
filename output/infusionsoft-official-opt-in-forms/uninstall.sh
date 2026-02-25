#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'inf_infusionsoft_options'
wp option delete 'infusionsoft_redirect_lists'
wp option delete 'update_refresh'
wp option delete 'inf_infusionsoft_stats_cache'

# Clear Cron Jobs
wp cron event delete 'infusionsoft_lists_auto_refresh'
wp cron event delete 'infusionsoft_stats_auto_refresh'

