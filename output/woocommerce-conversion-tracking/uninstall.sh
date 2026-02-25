#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcct_installed'
wp option delete 'wcct_version'
wp option delete 'wcct_dismissable_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'wcct_settings'
wp option delete 'woocommerce_wc_conv_tracking_settings'
wp option delete '_wcct_20_notice_dismiss'

# Delete Transients
wp transient delete 'wcct_upgrade_to_20'

# Clear Cron Jobs

