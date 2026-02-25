#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctrlbs_settings'
wp option delete 'ctrlbs_donation_notice_shown'
wp option delete 'ctrlbs_donation_notice_dismissed'

# Delete Transients
wp transient delete 'ctrlbs_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ctrlbs_rate_limit_%' OR option_name LIKE '_site_transient_ctrlbs_rate_limit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ctrlbs_rate_limit_time_%' OR option_name LIKE '_site_transient_ctrlbs_rate_limit_time_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ctrlbs_throttle_%' OR option_name LIKE '_site_transient_ctrlbs_throttle_%'"

# Clear Cron Jobs
wp cron event delete 'ctrlbs_daily_cleanup'

