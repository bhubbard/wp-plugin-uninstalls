#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%'"
wp option delete 'cts_review_notice_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'cts-opt'

# Delete Transients
wp transient delete 'themeatelier_plugins'

# Clear Cron Jobs

