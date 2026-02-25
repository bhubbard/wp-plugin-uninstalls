#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cdn_update_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_update_notice_dismissed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cdn_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_detected'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_replace_from'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_replace_to'"

# Clear Cron Jobs

