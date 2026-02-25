#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%admin_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%is_valid_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%auto_submission_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%failed_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%passed_count'"
wp option delete 'bwt-failed_count'
wp option delete 'bwt-passed_count'
wp option delete 'bwt-is_valid_api_key'
wp option delete 'bwt-admin_api_key'
wp option delete 'bwt-auto_submission_enabled'

