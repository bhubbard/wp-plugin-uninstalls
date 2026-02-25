#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcs_trial_coupon_installed'
wp option delete 'wcs_trial_coupon_version'
wp option delete 'wcs_spare_me'
wp option delete 'wcs_remind_me'
wp option delete 'wcs_rated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

