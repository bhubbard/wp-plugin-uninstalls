#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unlimited_theme_addons_active_addons'
wp option delete 'unlimited_theme_addons_active_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

