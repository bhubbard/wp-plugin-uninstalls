#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hookmeup_done_import'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_preview'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_editor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'woocommerce_myaccount_page_id'

# Clear Cron Jobs

