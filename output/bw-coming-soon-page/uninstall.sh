#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bwcs_enable_plugin'
wp option delete 'bwcs_coming_soon_page'
wp option delete 'bwcs_roles'
wp option delete 'bwcs_other_pages'
wp option delete 'woocommerce_shop_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

