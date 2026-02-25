#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lw_all_in_one'
wp option delete 'lw_all_in_one_version'
wp option delete 'lw_all_in_one_privacy_pages'
wp option delete 'gadwp_options'
wp option delete 'gadwp_redeemed_code'
wp option delete 'exactmetrics_tracking_notice'
wp option delete 'exactmetrics_usage_tracking_last_checkin'
wp option delete 'exactmetrics_usage_tracking_config'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_privacy_pages'"
wp option delete 'wim_activation_status'
wp option delete 'web-instant-messenger'
wp option delete 'italy_cookie_choices'
wp option delete 'WpFastestCacheExclude'
wp option delete 'wpcf7'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'lw_all_in_one_ga_custom_events'
wp option delete 'lw_all_in_one_purified_css'

# Clear Cron Jobs
wp cron event delete 'lw_all_in_one_data_retention'
wp cron event delete 'lw_all_in_one_cf7_sync'
wp cron event delete 'exactmetrics_usage_tracking_cron'
wp cron event delete 'lw_all_in_one_single_event'

