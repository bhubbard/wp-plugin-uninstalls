#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'click_to_top_shop_info'
wp option delete 'click_to_top_notice_dismissed_130'
wp option delete 'click_to_top_previous_version'
wp option delete 'click_top_basic'
wp option delete 'click_top_style'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

