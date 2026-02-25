#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shortcodes_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ts_tracker_last_send'"
wp option delete 'ts_reset_tracking'
wp option delete 'wcap_restrict_domain_address'
wp option delete 'active_TS_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_welcome_page_shown'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_welcome_page_shown_time'"
wp option delete 'shortcodes_allow_tracking'

# Clear Cron Jobs

