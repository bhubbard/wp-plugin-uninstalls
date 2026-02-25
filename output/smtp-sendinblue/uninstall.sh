#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_debug'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_log_settings'"

# Clear Cron Jobs

