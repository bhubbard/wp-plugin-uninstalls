#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_custom_role_creator_installed'
wp option delete '_custom_role_creator_version'
wp option delete 'wp_user_roles'
wp option delete '_crc_all_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

