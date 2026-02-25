#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'widget_gspw_posts'
wp option delete 'gspw_active_time'
wp option delete 'gspw_review_dismiss'
wp option delete 'gspw_maybe_later'
wp option delete 'gsadmin_maybe_later'
wp option delete 'gsadmin_active_time'

# Clear Cron Jobs

