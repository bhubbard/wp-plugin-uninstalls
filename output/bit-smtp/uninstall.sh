#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%tracking_notice_dismissed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%tracking_last_sended_at'"

# Clear Cron Jobs

