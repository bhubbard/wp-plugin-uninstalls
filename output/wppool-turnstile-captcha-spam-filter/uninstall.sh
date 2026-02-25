#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ect_store'
wp option delete 'ect_validated'
wp option delete 'ect_placement'
wp option delete 'ect_disabled_ids'
wp option delete 'ect_redirect_to_admin_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

