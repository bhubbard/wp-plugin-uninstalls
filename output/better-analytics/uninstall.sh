#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'better_analytics'
wp option delete 'ba_site_tokens'
wp option delete 'ba_tokens'
wp option delete 'better_analytics_site'
wp option delete 'ba_dashboard_pick'

# Delete Transients
wp transient delete 'ba_int'
wp transient delete 'ba_last_error'
wp transient delete 'ba_exp_live'
wp transient delete 'ba_realtime'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ba_stats_%' OR option_name LIKE '_site_transient_ba_stats_%'"

# Clear Cron Jobs
wp cron event delete 'better_analytics_cron_minutely'
wp cron event delete 'better_analytics_cron_hourly'

